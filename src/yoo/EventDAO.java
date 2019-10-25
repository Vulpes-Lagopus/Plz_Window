package yoo;

import java.util.*;
import java.sql.*;

public class EventDAO {
	
	private DBConnectionMgr pool=null;
	
	private Connection con=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs=null;
	private String sql="";
	
	public EventDAO(){
		try {
			pool=DBConnectionMgr.getInstance();
			System.out.println("pool=>"+pool);
		}catch(Exception e) {
			System.out.println("DB연결 실패=>"+e);
		}
	}
	
	//1.이벤트 등록
	public boolean eventInsert(EventDTO event) {
		boolean check=false;
		try {
			con=pool.getConnection();
			con.setAutoCommit(false);
			
			sql="insert into event values(?,?,?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, event.getEvent_code());
			pstmt.setString(2, event.getMem_id());
			pstmt.setString(3, event.getPack_id());
			pstmt.setString(4, event.getEvent_name());
			pstmt.setInt(5, event.getEvent_sale());
			pstmt.setString(6, event.getEvent_date());
			int insert=pstmt.executeUpdate();
			
			
			System.out.println("insert(데이터 입력유무)=>"+insert);
			con.commit();
			if(insert>0) {
				check=true;//데이터 성공확인
			}
		}catch(Exception e) {
			System.out.println("eventInsert()에러유발=>"+e);
		}finally {
			pool.freeConnection(con, pstmt);
		}
		return check;
	}
	//2.이벤트 수정
	public EventDTO getEvent(String event_code) {
		EventDTO event=null;
		
		try {
			con=pool.getConnection();
			sql="select * from event where event_code=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, event_code);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				event=new EventDTO();
				event.setEvent_code(rs.getString("event_code"));
			}
		} catch (Exception e) {
			System.out.println("getEvent()메소드 에러유발=>"+e);
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return event;
	}
	
	//3.이벤트 삭제
	public int eventDelete(String event_code, String pack_id) {
		String code="";
		int x=-1;
		
		try {
			con=pool.getConnection();
			con.setAutoCommit(false);
			
			pstmt=con.prepareStatement("select pack_id from event where event_code=?");
			pstmt.setString(1, event_code);
			rs=pstmt.executeQuery();
			//이벤트가 존재한다면
			if(rs.next()) {
				code=rs.getString("pack_id");
				System.out.println("code=>"+code);

				if(code.equals(pack_id)) {
					pstmt=con.prepareStatement("delete from bascket where pack_id=?");
					pstmt.setString(1, pack_id);
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
			System.out.println("eventDelete()오류=>"+e);
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return x;
	}
	
}
