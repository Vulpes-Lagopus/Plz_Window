package yoo;

import java.util.*;
import java.sql.*;

public class BascketDAO {
	
	private DBConnectionMgr pool=null;
	
	private Connection con=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs=null;
	private String sql="";
	
	public BascketDAO(){
		try {
			pool=DBConnectionMgr.getInstance();
			System.out.println("pool=>"+pool);
		}catch(Exception e) {
			System.out.println("DB연결 실패=>"+e);
		}
	}
	
	//1.장바구니 상품등록
	public boolean bascketInsert(BascketDTO basc) {
		boolean check=false;
		try {
			con=pool.getConnection();
			con.setAutoCommit(false);
			
			sql="insert into bascket values(?,?,?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, basc.getBasc_number());
			pstmt.setString(2, basc.getMem_id());
			pstmt.setString(3, basc.getPack_id());
			pstmt.setString(4, basc.getEvent_code());
			pstmt.setInt(5, basc.getBasc_quantity());
			pstmt.setString(6, basc.getBasc_date());
			int insert=pstmt.executeUpdate();
			
			
			System.out.println("insert(데이터 입력유무)=>"+insert);
			con.commit();
			if(insert>0) {
				check=true;//데이터 성공확인
			}
		}catch(Exception e) {
			System.out.println("bascketInsert()에러유발=>"+e);
		}finally {
			pool.freeConnection(con, pstmt);
		}
		return check;
	}
	
	//장바구니 특정 상품 찾기
	public BascketDTO getBascket(String basc_number) {
		BascketDTO basc=null;//id값에 해당되는 레코드 한개를 저장
		
		try {
			con=pool.getConnection();
			sql="select Basc_quantity from member where basc_number=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, basc_number);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				basc=new BascketDTO();
				basc.setBasc_number(rs.getString("basc_number"));
			}
		} catch (Exception e) {
			System.out.println("getBascket()메소드 에러유발=>"+e);
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return basc;
	}
	
	//장바구니 리스트 불러오기
		public int getBacketCount() { //getMemberCount()
			int x=0;//총 레코드갯수를 저장
			
			try {
				con=pool.getConnection();//커넥션풀에서 한개 빌려오는 작업
				System.out.println("con=>"+con);//디버깅코드
				sql="select count(*) from bascket";//select count(*) from member;
				pstmt=con.prepareStatement(sql);
				rs=pstmt.executeQuery();
				if(rs.next()) { //보여주는 결과가 있다면
					x=rs.getInt(1); //변수명=rs.get자료형(필드명 또는 인덱스번호)=>필드명X을 사용할 수 없는 경우에 사용
				}
			}catch(Exception e){
				System.out.println("getBascketCount() 메소드 에러유발"+e);
			}finally {
				pool.freeConnection(con, pstmt, rs);//연결객체 및 다른 객체 반납
			}
			return x;
		}
	
	
	//2.장바구니 상품수정
	public boolean bascketUpdate(BascketDTO basc) {
		boolean check=false;
		try {
			con=pool.getConnection();
			//--트랜잭션->오라클은 필수
			con.setAutoCommit(false);//default->con.setAutoCommit(true)
			//------------------------------
			sql="update bascket set basc_quantity where basc_number=?";
			
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, basc.getBasc_quantity());
			pstmt.setString(2, basc.getBasc_number());
			
			
			int update=pstmt.executeUpdate();//반환1(성공), 0(실패)
			System.out.println("update(데이터 수정유무)=>"+update);
			con.commit();//실질적으로 메모리상의 insert->테이블에 반영
			if(update==1) {
				check=true;//데이터 성공확인
			}
		}catch(Exception e) {
			System.out.println("bascketUpdate()에러유발=>"+e);
		}finally {
			pool.freeConnection(con, pstmt);
		}
		return check;
	}
	
	//3.장바구니	삭제
	public int bascketDelete(String basc_number, String mem_id) {
		String number="";
		int x=-1;
		
		try {
			con=pool.getConnection();
			con.setAutoCommit(false);
			
			pstmt=con.prepareStatement("select mem_id from member where basc_number=?");
			pstmt.setString(1, basc_number);
			rs=pstmt.executeQuery();
			//장바구니에 존재한다면
			if(rs.next()) {
				number=rs.getString("mem_id");
				System.out.println("number=>"+number);

				if(number.equals(mem_id)) {
					pstmt=con.prepareStatement("delete from bascket where mem_id=?");
					pstmt.setString(1, mem_id);
					int delete=pstmt.executeUpdate();
					System.out.println("delete(장바구니 삭제 유무)=>"+delete);
					con.commit();
					x=1;//삭제 성공
				}else {
					x=0;//삭제 실패
				}
			}else {
				x=-1;//삭제 실패 -> 존재X
			}
		} catch (Exception e) {
			System.out.println("bascketDelete()오류=>"+e);
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return x;
	}
	
	//------(3)페이징 처리계산 정리해주는 메서드-----------------------------------------------------
		//1)화면에 보여주는 페이지번호 2)화면에 출력할 레코드 갯수
		//Hashtable=>페이징 처리에 관련된 처리결과를 저장한 변수들을 하나의 객체에 담아서 -> BascketAction
		public Hashtable BascketPageList(String basc_number, int count) {
			//1.페이징 처리결과를 저장할 hashtable객체를 선언
			Hashtable<String,Integer> pgList = new Hashtable<String,Integer>();
			//ListAction에서의 복잡한 페이징처리를 대신 처리
					int pageSize=10;//numPerPage->페이지당 보여주는 게시물수(=레코드수) 10
					int blockSize=10;//pagePerBlcok->클릭당 보여주는 페이지수 10
					
					if(basc_number==null){
						basc_number="1";//default(무조건 1페이지는 선택하지 않아도 보여줘야 하기때문에), 가장 최근의 글
					}
					int currentPage=Integer.parseInt(basc_number);//"1"->1 현재페이지(=nowPage)
					//메소드 호출->시작 레코드번호
					//					(1-1)*10+1=1, (2-1)*10+1=11, (3-1)*10+1=21,,,
					int startRow=(currentPage-1)*pageSize+1;
					int endRow=currentPage*pageSize;//1*10=10, 2*10=20, 3*10=30,,,
					int number=0;//beginPerPage->페이지별로 시작하는 맨 처음에 나오는 게시물번호
					System.out.println("현재 레코드수(count)=>"+count);
					//             122-(1-1)*10=122  122-(2-1)*10=112
					number=count-(currentPage-1)*pageSize; 
					System.out.println("페이지별 number=>"+number);
					
					//총페이지수,시작,종료페이지 계산
					//                      122/10=12.2+1=12.2+1.0=13.2=13페이지
					int pageCount = count/pageSize+(count%pageSize==0?0:1);
					//블럭당 페이지수 계산->10->10배수,3->3배수
					//모델1 list.jsp
					int startPage=0;//1,2,3,,,,10[다음 블럭 10]->11,12,,,20
					if(currentPage%blockSize!=0){ //1~9,11~19,21~29,,,
						startPage=currentPage/blockSize*blockSize+1;
					}else{//10% 10=0,(10,20,30)
											//((10/10)-1)*10+1
						startPage=((currentPage/blockSize)-1)*blockSize+1;
					}
					int endPage=startPage+blockSize-1;//1+10-1=10
					System.out.println("startPage="+startPage+", endPage="+endPage);
					if(endPage > pageCount)
						endPage=pageCount;//마지막페이지=총페이지수
					//페이징처리에 대한 계산결과->Hashtable,HashMap->ListAction 전달->메모리에 저장->list.jsp
					pgList.put("pageSize", pageSize);//<->pgList.get(키명)("pageSize")
					pgList.put("blockSize", blockSize);
					pgList.put("currentPage", currentPage);
					pgList.put("startRow", startRow);
					pgList.put("endRow", endRow);
					pgList.put("count", count);
					pgList.put("number", number);
					pgList.put("startPage", startPage);
					pgList.put("endPage", endPage);
					pgList.put("pageCount", pageCount);
					
					
					return pgList;
		}
	
}
