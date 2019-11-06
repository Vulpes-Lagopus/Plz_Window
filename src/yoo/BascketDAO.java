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
	
	//장바구니 리스트
	
	
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
	
}
