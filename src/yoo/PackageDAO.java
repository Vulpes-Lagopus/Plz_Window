package yoo;

import java.util.*;
import java.sql.*;

public class PackageDAO {
	
	private DBConnectionMgr pool=null;
	
	private Connection con=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs=null;
	private String sql="";
	
	public PackageDAO(){
		try {
			pool=DBConnectionMgr.getInstance();
			System.out.println("pool=>"+pool);
		}catch(Exception e) {
			System.out.println("DB연결 실패=>"+e);
		}
	}
	
	//1.상품 등록
	public boolean packageInsert(PackageDTO pack, Pack_genreDTO genre, Pack_langDTO lang, Pack_platformDTO platform) {
		boolean check=false;
		try {
			con=pool.getConnection();
			con.setAutoCommit(false);
			
			sql="insert into package values(?,?,?,?,?,?,?,?,?,?)"; //상품
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, pack.getPack_id());
			pstmt.setString(2, pack.getPub_code());
			pstmt.setString(3, pack.getPack_name());
			pstmt.setInt(4, pack.getPack_price());
			pstmt.setString(5, pack.getPack_date());
			pstmt.setString(6, pack.getPack_detail1());
			pstmt.setString(7, pack.getPack_detail2());
			pstmt.setString(8, pack.getPack_detail3());
			pstmt.setString(9, pack.getPack_img1());
			pstmt.setString(10, pack.getPack_img2());
			
			sql="insert pack_genre values(?,?,?)"; //상품-장르
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, pack.getPack_id());
			pstmt.setString(2, genre.getGenre_number());
			pstmt.setString(3, genre.getGenre_name());
			
			sql="insert pack_lang values(?,?,?)"; //상품-언어
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, pack.getPack_id());
			pstmt.setString(2, lang.getLang_number());
			pstmt.setString(3, lang.getLang_name());
			
			sql="insert pack_platform values(?,?,?)"; //상품-플랫폼
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, pack.getPack_id());
			pstmt.setString(2, platform.getPlatform_number());
			pstmt.setString(3, platform.getPlatform_name());
			
			int insert=pstmt.executeUpdate();
			
			
			System.out.println("insert(데이터 입력유무)=>"+insert);
			con.commit();
			if(insert>0) {
				check=true;//데이터 성공확인
			}
		}catch(Exception e) {
			System.out.println("packageInsert()에러유발=>"+e);
		}finally {
			pool.freeConnection(con, pstmt);
		}
		return check;
	}
	//2.상품 수정
	public PackageDTO getPackage(String pack_id) {
		PackageDTO pack=null;//id값에 해당되는 레코드 한개를 저장
		
		try {
			con=pool.getConnection();
			sql="select * from package where pack_id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, pack_id);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				pack=new PackageDTO();
				pack.setPack_id(rs.getString("pack_id"));
			}
		} catch (Exception e) {
			System.out.println("getPackage()메소드 에러유발=>"+e);
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return pack;
	}
	
	public boolean packageUpdate(PackageDTO pack, Pack_genreDTO genre, Pack_langDTO lang, Pack_platformDTO platform) {
		boolean check=false;
		try {
			con=pool.getConnection();
			//--트랜잭션->오라클은 필수
			con.setAutoCommit(false);//default->con.setAutoCommit(true)
			//------------------------------
			sql="update package set pack_name=?,pack_price=?,pack_date=?,"
					+"pack_detail1=?,pack_detail2=?,pack_detail3=?,pack_img1=?pack_img2=? where pack_id=?";
			
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, pack.getPack_id());
			pstmt.setInt(2, pack.getPack_price());
			pstmt.setString(3, pack.getPack_date());
			pstmt.setString(4, pack.getPack_detail1());
			pstmt.setString(5, pack.getPack_detail2());
			pstmt.setString(6, pack.getPack_detail3());
			pstmt.setString(7, pack.getPack_img1());
			pstmt.setString(8, pack.getPack_img2());
			pstmt.setString(9, pack.getPack_id());
			
			sql="update pack_genre set genre_name=? where pack_id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, genre.getGenre_name());
			pstmt.setString(2, pack.getPack_id());
			
			sql="update pack_lang set lang_name=? where pack_id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, lang.getLang_name());
			pstmt.setString(2, pack.getPack_id());
			
			sql="update pack_platform set platform_name=? where pack_id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, platform.getPlatform_name());
			pstmt.setString(2, pack.getPack_id());
			
			int update=pstmt.executeUpdate();//반환1(성공), 0(실패)
			System.out.println("update(데이터 수정유무)=>"+update);
			con.commit();//실질적으로 메모리상의 insert->테이블에 반영
			if(update==1) {
				check=true;//데이터 성공확인
			}
		}catch(Exception e) {
			System.out.println("packageUpdate()에러유발=>"+e);
		}finally {
			pool.freeConnection(con, pstmt);
		}
		return check;
	}
	
	//3.상품 삭제
	public int packageDelete(String pack_id, String mem_id) {
		String number="";
		int x=-1;
		
		try {
			con=pool.getConnection();
			con.setAutoCommit(false);
			
			pstmt=con.prepareStatement("select mem_id from member where pack_id=?");
			pstmt.setString(1, pack_id);
			rs=pstmt.executeQuery();
			//장바구니에 존재한다면
			if(rs.next()) {
				number=rs.getString("mem_id");
				System.out.println("number=>"+number);

				if(number.equals(mem_id)) {
					pstmt=con.prepareStatement("delete from package where mem_id=?");
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
