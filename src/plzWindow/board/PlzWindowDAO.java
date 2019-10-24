package plzWindow.board;

//DBConnectionMgr(DB접속,관리), BoardDTO(매개변수,반환형,데이터 담는 역할)
import java.sql.*;//DB사용
import java.util.*;//ArrayList,List을 사용

public class PlzWindowDAO {  //MemberDAO

	private DBConnectionMgr pool=null;//1.연결할객체 선언
	//공통
	private Connection con=null;
	private PreparedStatement pstmt=null;//?
	private ResultSet rs=null;//select
	private String sql="";//실행시킬 SQL구문 저장
	
	//2.생성자를 통해서 연결->의존성
	public PlzWindowDAO() {
		try {
			pool=DBConnectionMgr.getInstance();
		}catch(Exception e) {
			System.out.println("DB접속 오류=>"+e);
		}
	}//생성자
	
	//1.페이징 처리를 위한 전체레코드수를 구해와야 한다.=>데이터를 출력
	//select count(*) from board; =>반환값 O ,where 조건식X ->매개변수가 X
	public int getArticleCount() {  //getMemberCount()
		int x=0;//총 레코드갯수를 저장
		
		try {
			con=pool.getConnection();//커넥션풀에서 한개 빌려오는작업
			System.out.println("con=>"+con);//디버깅코드
			sql="select count(*) from questionboard"; //select count(*) from member;
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {//보여주는 결과가 있다면
				x=rs.getInt(1);  //변수명=rs.get자료형(필드명 또는 인덱스번호)=>필드명X을 사용할 수 없는 경우에 사용
			}
		}catch(Exception e) {
			System.out.println("getArticleCount() 메서드 에러유발"+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);//연결객체 및 다른 객체 반납
		}
		return x;
	}
   //-----------------------------------------------------------------------------------
	//(1)게시판의 레코드수를 검색어에 따른 메서드작성(검색분야,검색어)
	
	public int getArticleSearchCount(String search,String searchtext) {  //getMemberCount()
		int x=0;//총 레코드갯수를 저장
		
		try {
			con=pool.getConnection();//커넥션풀에서 한개 빌려오는작업
			System.out.println("con=>"+con);//디버깅코드
			//------------------------------------------------------------------------
			if(search==null || search=="") { //검색분야 선택X (검색어를 입력하지 않은경우)
				sql="select count(*) from questionboard"; //select count(*) from member;
			}else { //검색분야(제목,작성자,제목+본문)
				if(search.equals("subject_content")) { //제목+본문
					sql="select count(*) from questionboard where subject like '%"+
				           searchtext+"%' or content like '%"+searchtext+"%' ";
				}else { //제목,작성자->매개변수를 이용해서 하나의 sql통합
					sql="select count(*) from questionboard where "+search+" like '%"+
				           searchtext+"%' ";
				}
			}
			System.out.println("getArticleSearchCount 검색sql=>"+sql);
			//-------------------------------------------------------------------------
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {//보여주는 결과가 있다면
				x=rs.getInt(1);  //변수명=rs.get자료형(필드명 또는 인덱스번호)=>필드명X을 사용할 수 없는 경우에 사용
			}
		}catch(Exception e) {
			System.out.println("getArticleSearchCount() 메서드 에러유발"+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);//연결객체 및 다른 객체 반납
		}
		return x;
	}

	//-----------------------------------------------------------------------------------
	//2.글목록보기에 대한 메서드구현->레코드가 한개이상->한 페이지당 10개씩 끊어서 보여준다.
	//1) 레코드의 시작번호   2) 불러올 레코드의 갯수
	public List getArticles(int start,int end) {//getMemberList(int start,int end)
		
		List articleList=null;//ArrayList articleList=null;
		
		try {
			con=pool.getConnection();
		    /*
		     *그룹번호가 가장 최신의 글을 중심으로 정렬하되,만약에 level이 같은 경우에는
		     *step값으로 오름차순을 통해서 몇번째 레코드번호를 기준해서 정렬할것인가? 
		     */
			sql="select * from questionboard order by ref desc,re_step asc limit ?,?";//1,10
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, start-1);//mysql은 레코드순번이 내부적으로 0부터 시작
			pstmt.setInt(2, end);
			rs=pstmt.executeQuery();
			//글목록보기
			if(rs.next()) {//레코드가 최소 만족 1개이상 존재한다면
				articleList=new ArrayList(end);//10=>end갯수만큼 데이터를 담을 공간을 생성하라
				do {
					PlzWindowDTO article=new PlzWindowDTO();//MemberDTO~
					article.setNum(rs.getInt("quest_number"));
					article.setWriter(rs.getString("mem_id"));
					article.setSubject(rs.getString("quest_title"));
					article.setReg_date(rs.getTimestamp("quest_date"));//오늘날짜->코딩 ->now()
					article.setReadcount(rs.getInt("readcount"));//default->0
					article.setRef(rs.getInt("ref"));//그룹번호->신규글과 답변글 묶어주는 역할
					article.setRe_step(rs.getInt("re_step"));//답변글이 나오는 순서(0,1,2,3,,오름차순)
					article.setRe_level(rs.getInt("re_level"));//들여쓰기(답변의 깊이)
					article.setContent(rs.getString("quest_content"));//글내용
					                                              //request.getRemoteAddr()
					//추가
					articleList.add(article);
				}while(rs.next());
			}
		}catch(Exception e) {
			System.out.println("getArticles() 메서드 에러유발"+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);
		}
		return articleList;
	}
	//------------------------------------------------------------------------
	//(2)검색어에 따른 레코드의 범위지정에 대한 메서드
	
public List getBoardArticles(int start,int end,String search,String searchtext) {
		
		List articleList=null;//ArrayList articleList=null;
		
		try {
			con=pool.getConnection();
		    //---------------------------------------------------------------------------
			if(search==null || search=="") {
				sql="select * from questionboard order by ref desc,re_step asc limit ?,?";//1,10
			}else { //제목+본문
				if(search.equals("subject_content")) { //제목+본문
					sql="select * from questionboard where subject like '%"+
				           searchtext+"%' or content like '%"+searchtext+"%' order by ref desc,re_step asc limit ?,?";
				}else { //제목,작성자->매개변수를 이용해서 하나의 sql통합
					sql="select * from questionboard where "+search+" like '%"+
				           searchtext+"%' order by ref desc,re_step asc limit ?,?";
				}
			}
			System.out.println("getBoardArticles()의 sql=>"+sql);
			//-----------------------------------------------------------------------------
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, start-1);//mysql은 레코드순번이 내부적으로 0부터 시작
			pstmt.setInt(2, end);
			rs=pstmt.executeQuery();
			//글목록보기
			if(rs.next()) {//레코드가 최소 만족 1개이상 존재한다면
				articleList=new ArrayList(end);//10=>end갯수만큼 데이터를 담을 공간을 생성하라
				do {
					PlzWindowDTO article=new PlzWindowDTO();//MemberDTO~
					article.setNum(rs.getInt("quest_number"));
					article.setWriter(rs.getString("mem_id"));
					article.setSubject(rs.getString("quest_title"));
					article.setReg_date(rs.getTimestamp("quest_date"));//오늘날짜->코딩 ->now()
					article.setReadcount(rs.getInt("readcount"));//default->0
					article.setRef(rs.getInt("ref"));//그룹번호->신규글과 답변글 묶어주는 역할
					article.setRe_step(rs.getInt("re_step"));//답변글이 나오는 순서(0,1,2,3,,오름차순)
					article.setRe_level(rs.getInt("re_level"));//들여쓰기(답변의 깊이)
					article.setContent(rs.getString("quest_content"));//글내용
					                                              //request.getRemoteAddr()
					//추가
					articleList.add(article);
				}while(rs.next());
			}
		}catch(Exception e) {
			System.out.println("getArticles() 메서드 에러유발"+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);
		}
		return articleList;
	}
	//---(3)페이징 처리계산 정리해주는 메서드(ListAction)-------------------------------------
    //1)화면에 보여주는 페이지번호  2) 화면에 출력할 레코드갯수
    //Hashtable=>페이징 처리에 관련된 처리결과를 저장한 변수들을 하나의 객체에 담아서 ->ListAction
    public Hashtable pageList(String pageNum,int count) {
    	
    	//1.페이징 처리결과를 저장할 hashtable객체를 선언
    	Hashtable<String,Integer> pgList=new Hashtable<String,Integer>();
    	//ListAction에서의 복잡한 페이징처리를 대신 처리
	     int pageSize=10;//numPerPage->페이지당 보여주는 게시물수(=레코드수) 10
	     int blockSize=10;//pagePerBlock->블럭당 보여주는 페이지수 10
	     
	    //게시판을 맨 처음 실행시키면 무조건 1페이지부터 출력
	    if(pageNum==null){
	    	pageNum="1";//default(무조건 1페이지는 선택하지 않아도 보여줘야 하기때문에),가장 최근의 글
	    }
	    int currentPage=Integer.parseInt(pageNum);//"1"->1 현재페이지(=nowPage)
	    //메서드 호출->시작 레코드번호
	    //                  (1-1)*10+1=1,(2-1)*10+1=11,(3-1)*10+1=21)
	    int startRow=(currentPage-1)*pageSize+1; //시작 레코드 번호
	    int endRow=currentPage*pageSize;//1*10=10,2*10=20,3*10=30 ->마지막 레코드번호
	    int number=0;//beginPerPage->페이지별로 시작하는 맨 처음에 나오는 게시물번호
	    System.out.println("현재 레코드수(count)=>"+count);
	    //            122-(1-1)*10=122,122-(2-1)*10=112
	    number=count-(currentPage-1)*pageSize;
	    System.out.println("페이지별 number=>"+number);
	    
	    //총페이지수,시작,종료페이지 계산
	    //                      122/10=12.2+1=>12.2+1.0=13.2=13페이지
	       int pageCount=count/pageSize+(count%pageSize==0?0:1);
	    //블럭당 페이지수 계산->10->10배수,3->3배수
	       int startPage=0;//1,2,3,,,,10 [다음 블럭 10]->11,12,,,,20
	       if(currentPage%blockSize!=0){//1~9,11~19,21~29
	    	   startPage=currentPage/blockSize*blockSize+1;
	       }else{ //10%10=0,(10,20,30)
	    		               //((10/10)-1)*10+1
	    	   startPage=((currentPage/blockSize)-1)*blockSize+1;
	       }
	       int endPage=startPage+blockSize-1;//1+10-1=10
	       System.out.println("startPage="+startPage+",endPage="+endPage);
	       if(endPage > pageCount)
	    	   endPage=pageCount;//마지막페이지=총페이지수
	       //페이징처리에 대한 계산결과->Hashtable,HashMap->ListAction전달->메모리에 저장->list.jsp
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


   //--------------------------------------------------------------------------
	//------ 게시판의 글쓰기 및 답변글쓰기----------------
	//insert into board values(?,?,,,)
	public void insertArticle(PlzWindowDTO article) { //~(MemberDTO mem)
		
		//1.article=>신규글인지 답변글인지 확인
		int num=article.getNum();//0(신규글) 0아닌경우(답변글)
		int ref=article.getRef();
		int re_step=article.getRe_step();
		int re_level=article.getRe_level();
		//테이블에 입력할 게시물번호를 저장할 변수
		int number=0;//데이터를 저장하기위한 게시물번호
		System.out.println("insertArticle 메서드의 내부 num=>"+num);//0신규글
		System.out.println("ref=>"+ref+",re_step=>"+re_step+",re_level=>"+re_level);
		
		try {
			con=pool.getConnection();
			sql="select max(quest_number) from questionboard"; //최대값+1=실제 저장할 게시물번호
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {//보여주는 결과가 있다면 ->rs.last()->rs.getRow();(X)
				number=rs.getInt(1)+1;  //변수명=rs.get자료형(필드명 또는 인덱스번호)=>필드명X을 사용할 수 없는 경우에 사용
			}else {//현재 테이블에 데이터가 한개라도 없는 경우
				number=1;
			}
			//답변글이라면
			if(num!=0) { //양수면서 1이상
				//같은 그룹번호를 가지고 있으면서 나보다 step값이 큰놈을 찾아서  그 step값을 하나 증가
				sql="update questionboard set re_step=re_step+1 where ref=? and re_step > ?";
				pstmt=con.prepareStatement(sql);
				pstmt.setInt(1, ref);
				pstmt.setInt(2, re_step);
				int update=pstmt.executeUpdate();
				System.out.println("댓글수정유무(update)=>"+update);//1(성공)
				//답변글
				re_step=re_step+1;
				re_level=re_level+1;
			}else {//신규글이라면 num=0(신규글)
				ref=number;//1,2,3,4,5,,,,
				re_step=0;
				re_level=0;
			}
			//12개->num,reg_date,reacount(생략)->default,
			//작성날짜->sysdate,now()<-mysql(?대신에)
			sql="insert into questionboard(mem_id,quest_title,quest_writer,quest_content,quest_date,";
			sql+="ref,re_step,re_level) values('scott',?,'scott',?,?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, article.getSubject());
			pstmt.setString(2, article.getContent());
			pstmt.setTimestamp(3, article.getReg_date());//? 대신에 now()(웹상에서 계산해서 저장)
			//--------ref,re_step,re_level에 대한 계산이 적용이 된상태에서 저장----------------------
			pstmt.setInt(4, ref);//pstmt.setInt(6, article.getRef());(X)
			pstmt.setInt(5, re_step);
			pstmt.setInt(6, re_level);
			//--------------------------------------------------------
			
			int insert=pstmt.executeUpdate();
			System.out.println("게시판의 글쓰기 성공유무(insert)=>"+insert);//1 or 0실패
		}catch(Exception e) {
			System.out.println("insertArticle() 메서드 에러유발"+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);
		}
	}
	//글상세 보기
	//content.jsp?num=<%=article.getNum()%>&pageNum=<%=currentPage%>">
	//형식) select * from board where num=3
	//형식) update board set readcount=readcount+1 where num=3
	public PlzWindowDTO getArticle(int num) {
		
		PlzWindowDTO article=null;//ArrayList articleList=null;
				try {
					con=pool.getConnection();
				  
					sql="update questionboard set readcount=readcount+1 where quest_number=?";//1,10
					pstmt=con.prepareStatement(sql);
					pstmt.setInt(1, num);//mysql은 레코드순번이 내부적으로 0부터 시작
					int update=pstmt.executeUpdate();
					System.out.println("조회수 증가유무(update)=>"+update);//1
					
					sql="select * from questionboard where quest_number=?";//1,10
					pstmt=con.prepareStatement(sql);
					pstmt.setInt(1, num);
					rs=pstmt.executeQuery();
					//글목록보기
					if(rs.next()) {//레코드가 최소 만족 1개이상 존재한다면
						    //article=new BoardDTO();//MemberDTO~
						    article=makeArticleFromResult();//반환형을 얻어와서 처리
						    /*
							article.setNum(rs.getInt("num"));
							article.setWriter(rs.getString("writer"));
							article.setEmail(rs.getString("email"));
							article.setSubject(rs.getString("subject"));
							article.setPasswd(rs.getString("passwd"));
							article.setReg_date(rs.getTimestamp("reg_date"));//오늘날짜->코딩 ->now()
							article.setReadcount(rs.getInt("readcount"));//default->0
							article.setRef(rs.getInt("ref"));//그룹번호->신규글과 답변글 묶어주는 역할
							article.setRe_step(rs.getInt("re_step"));//답변글이 나오는 순서(0,1,2,3,,오름차순)
							article.setRe_level(rs.getInt("re_level"));//들여쓰기(답변의 깊이)
							article.setContent(rs.getString("content"));//글내용
							article.setIp(rs.getString("ip"));//글쓴이의 ip주소
							*/
					}
				}catch(Exception e) {
					System.out.println("getArticle() 메서드 에러유발"+e);
				}finally {
					pool.freeConnection(con,pstmt,rs);
				}
				return article;
			}
	//-----------중복된 레코드 한개를 담을 수 있는 메서드를 따로 만들어서 처리------------	
	private PlzWindowDTO makeArticleFromResult() throws Exception {
		PlzWindowDTO article=new PlzWindowDTO();
		article.setNum(rs.getInt("quest_number"));
		article.setWriter(rs.getString("mem_id"));
		article.setSubject(rs.getString("quest_title"));
		article.setReg_date(rs.getTimestamp("quest_date"));//오늘날짜->코딩 ->now()
		article.setReadcount(rs.getInt("readcount"));//default->0
		article.setRef(rs.getInt("ref"));//그룹번호->신규글과 답변글 묶어주는 역할
		article.setRe_step(rs.getInt("re_step"));//답변글이 나오는 순서(0,1,2,3,,오름차순)
		article.setRe_level(rs.getInt("re_level"));//들여쓰기(답변의 깊이)
		article.setContent(rs.getString("quest_content"));//글내용
		return article;
	}
	
	
	//-----------------------------------------------------------------------------
	//,글수정,
	//1)수정할 데이터를 찾을 메서드 필요=>select * from board where num=? =>조회수를 증가X
	public PlzWindowDTO updateGetArticle(int num) {
		PlzWindowDTO article=null;//ArrayList articleList=null;
		try {
			con=pool.getConnection();
		  
			sql="select * from questionboard where quest_number=?";//1,10
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			//글목록보기
			if(rs.next()) {//레코드가 최소 만족 1개이상 존재한다면
				   article=makeArticleFromResult();
				   /*
				    article=new BoardDTO();//MemberDTO~
					article.setNum(rs.getInt("num"));
					article.setWriter(rs.getString("writer"));
					article.setEmail(rs.getString("email"));
					article.setSubject(rs.getString("subject"));
					article.setPasswd(rs.getString("passwd"));
					article.setReg_date(rs.getTimestamp("reg_date"));//오늘날짜->코딩 ->now()
					article.setReadcount(rs.getInt("readcount"));//default->0
					article.setRef(rs.getInt("ref"));//그룹번호->신규글과 답변글 묶어주는 역할
					article.setRe_step(rs.getInt("re_step"));//답변글이 나오는 순서(0,1,2,3,,오름차순)
					article.setRe_level(rs.getInt("re_level"));//들여쓰기(답변의 깊이)
					article.setContent(rs.getString("content"));//글내용
					article.setIp(rs.getString("ip"));//글쓴이의 ip주소
					*/
			}
		}catch(Exception e) {
			System.out.println("updateGetArticle() 메서드 에러유발"+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);
		}
		return article;
	}
	
	//2)수정시키는 메서드 작성=>본인인지 확인절차=>회원탈퇴할때(암호를 비교->탈퇴)
	public int updateArticle(PlzWindowDTO article) { //insertArticle
		
		String dbpasswd=null;//db에서 찾은 암호를 저장
		int x=-1;//게시물의 수정성공유무
		
		try {
			con=pool.getConnection();
			sql="select passwd from questionboard where quest_number=?"; //최대값+1=실제 저장할 게시물번호
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,article.getNum() );
			rs=pstmt.executeQuery();
			if(rs.next()) {//보여주는 결과가 있다면 ->rs.last()->rs.getRow();(X)
				dbpasswd=rs.getString("passwd");
				System.out.println("dbpasswd=>"+dbpasswd);//확인한뒤에 나중에 삭제
			   
			   if(dbpasswd.contentEquals(article.getPasswd())) {			
					sql="update questionboard set writer=?,email=?,subject=?,passwd=?,";
					sql+="content=?  where quest_number=?";
					pstmt=con.prepareStatement(sql);
					pstmt.setString(1, article.getWriter());//웹에서는 Setter Method를 메모리에 저장
					pstmt.setString(2, article.getEmail());
					pstmt.setString(3, article.getSubject());
					pstmt.setString(4, article.getPasswd());
					pstmt.setString(5, article.getContent());
					pstmt.setInt(6, article.getNum());
					int update=pstmt.executeUpdate();
					System.out.println("게시판의 글수정 성공유무(update)=>"+update);//1 or 0실패
					x=1;//수정성공 표시
			   }else {//암호가 틀린경우
				   x=0;//수정 실패
			   }
			}else { //if(rs.next())
				x=-1; //찾은 데이터가 없는 경우(생략가능)
			}
		}catch(Exception e) {
			System.out.println("updateArticle() 메서드 에러유발"+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);
		}
		return x;
	}
	
	//글삭제=>암호를 비교->delete from board where num=3
	public int deleteArticle(int num,String passwd) {
		
		String dbpasswd=null;//db에서 찾은 암호를 저장
		int x=-1;//게시물의 삭제성공유무
		
		try {
			con=pool.getConnection();
			sql="select passwd from questionboard where quest_number=?"; //최대값+1=실제 저장할 게시물번호
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,num );
			rs=pstmt.executeQuery();//select구문을 사용
			if(rs.next()) {//보여주는 결과가 있다면 ->rs.last()->rs.getRow();(X)
				dbpasswd=rs.getString("passwd");
				System.out.println("dbpasswd=>"+dbpasswd);//확인한뒤에 나중에 삭제
			   
			   if(dbpasswd.contentEquals(passwd)) {	//DB상의 암호=웹상의 암호		
					sql="delete from questionboard where quest_number=?";
					pstmt=con.prepareStatement(sql);//pstmt=>new연산자를 통해서 값을 
					pstmt.setInt(1, num);
					int delete=pstmt.executeUpdate();//sql구문을 실행시키는 메서드(테이블의 구조)
					//insert,update(변경),delete=>create,alter,drop
					System.out.println("게시판의 글삭제 성공유무(delete)=>"+delete);//1 or 0실패
					x=1;//삭제성공 표시
			   }else {//암호가 틀린경우
				   x=0;//삭제 실패
			   }
			}//if(rs.next())
		}catch(Exception e) {
			System.out.println("deleteArticle() 메서드 에러유발"+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);
		}
		return x;
	}
}






