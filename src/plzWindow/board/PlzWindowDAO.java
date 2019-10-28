package plzWindow.board;

//DBConnectionMgr(DB�젒�냽,愿�由�), BoardDTO(留ㅺ컻蹂��닔,諛섑솚�삎,�뜲�씠�꽣 �떞�뒗 �뿭�븷)
import java.sql.*;//DB�궗�슜
import java.util.*;//ArrayList,List�쓣 �궗�슜

public class PlzWindowDAO {  //MemberDAO

	private DBConnectionMgr pool=null;//1.�뿰寃고븷媛앹껜 �꽑�뼵
	//怨듯넻
	private Connection con=null;
	private PreparedStatement pstmt=null;//?
	private ResultSet rs=null;//select
	private String sql="";//�떎�뻾�떆�궗 SQL援щЦ ���옣
	
	//2.�깮�꽦�옄瑜� �넻�빐�꽌 �뿰寃�->�쓽議댁꽦
	public PlzWindowDAO() {
		try {
			pool=DBConnectionMgr.getInstance();
		}catch(Exception e) {
			System.out.println("DB�젒�냽 �삤瑜�=>"+e);
		}
	}//�깮�꽦�옄
	
	//1.�럹�씠吏� 泥섎━瑜� �쐞�븳 �쟾泥대젅肄붾뱶�닔瑜� 援ы빐���빞 �븳�떎.=>�뜲�씠�꽣瑜� 異쒕젰
	//select count(*) from board; =>諛섑솚媛� O ,where 議곌굔�떇X ->留ㅺ컻蹂��닔媛� X
	public int getArticleCount() {  //getMemberCount()
		int x=0;//珥� �젅肄붾뱶媛��닔瑜� ���옣
		
		try {
<<<<<<< HEAD
			con=pool.getConnection();//커넥션풀에서 한개 빌려오는작업
			System.out.println("con=>"+con);//디버깅코드
=======
			con=pool.getConnection();//而ㅻ꽖�뀡���뿉�꽌 �븳媛� 鍮뚮젮�삤�뒗�옉�뾽
			System.out.println("con=>"+con);//�뵒踰꾧퉭肄붾뱶
>>>>>>> branch 'Soo' of https://github.com/Vulpes-Lagopus/Plz_Window.git
			sql="select count(*) from questionboard"; //select count(*) from member;
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {//蹂댁뿬二쇰뒗 寃곌낵媛� �엳�떎硫�
				x=rs.getInt(1);  //蹂��닔紐�=rs.get�옄猷뚰삎(�븘�뱶紐� �삉�뒗 �씤�뜳�뒪踰덊샇)=>�븘�뱶紐꿟�쓣 �궗�슜�븷 �닔 �뾾�뒗 寃쎌슦�뿉 �궗�슜
			}
		}catch(Exception e) {
			System.out.println("getArticleCount() 硫붿꽌�뱶 �뿉�윭�쑀諛�"+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);//�뿰寃곌컼泥� 諛� �떎瑜� 媛앹껜 諛섎궔
		}
		return x;
	}
   //-----------------------------------------------------------------------------------
	//(1)寃뚯떆�뙋�쓽 �젅肄붾뱶�닔瑜� 寃��깋�뼱�뿉 �뵲瑜� 硫붿꽌�뱶�옉�꽦(寃��깋遺꾩빞,寃��깋�뼱)
	
	public int getArticleSearchCount(String search,String searchtext) {  //getMemberCount()
		int x=0;//珥� �젅肄붾뱶媛��닔瑜� ���옣
		
		try {
			con=pool.getConnection();//而ㅻ꽖�뀡���뿉�꽌 �븳媛� 鍮뚮젮�삤�뒗�옉�뾽
			System.out.println("con=>"+con);//�뵒踰꾧퉭肄붾뱶
			//------------------------------------------------------------------------
			if(search==null || search=="") { //寃��깋遺꾩빞 �꽑�깮X (寃��깋�뼱瑜� �엯�젰�븯吏� �븡��寃쎌슦)
				sql="select count(*) from questionboard"; //select count(*) from member;
			}else { //寃��깋遺꾩빞(�젣紐�,�옉�꽦�옄,�젣紐�+蹂몃Ц)
				if(search.equals("subject_content")) { //�젣紐�+蹂몃Ц
					sql="select count(*) from questionboard where subject like '%"+
				           searchtext+"%' or content like '%"+searchtext+"%' ";
				}else { //�젣紐�,�옉�꽦�옄->留ㅺ컻蹂��닔瑜� �씠�슜�빐�꽌 �븯�굹�쓽 sql�넻�빀
					sql="select count(*) from questionboard where "+search+" like '%"+
				           searchtext+"%' ";
				}
			}
			System.out.println("getArticleSearchCount 寃��깋sql=>"+sql);
			//-------------------------------------------------------------------------
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {//蹂댁뿬二쇰뒗 寃곌낵媛� �엳�떎硫�
				x=rs.getInt(1);  //蹂��닔紐�=rs.get�옄猷뚰삎(�븘�뱶紐� �삉�뒗 �씤�뜳�뒪踰덊샇)=>�븘�뱶紐꿟�쓣 �궗�슜�븷 �닔 �뾾�뒗 寃쎌슦�뿉 �궗�슜
			}
		}catch(Exception e) {
			System.out.println("getArticleSearchCount() 硫붿꽌�뱶 �뿉�윭�쑀諛�"+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);//�뿰寃곌컼泥� 諛� �떎瑜� 媛앹껜 諛섎궔
		}
		return x;
	}

	//-----------------------------------------------------------------------------------
	//2.湲�紐⑸줉蹂닿린�뿉 ���븳 硫붿꽌�뱶援ы쁽->�젅肄붾뱶媛� �븳媛쒖씠�긽->�븳 �럹�씠吏��떦 10媛쒖뵫 �걡�뼱�꽌 蹂댁뿬以��떎.
	//1) �젅肄붾뱶�쓽 �떆�옉踰덊샇   2) 遺덈윭�삱 �젅肄붾뱶�쓽 媛��닔
	public List getArticles(int start,int end) {//getMemberList(int start,int end)
		
		List articleList=null;//ArrayList articleList=null;
		
		try {
			con=pool.getConnection();
		    /*
		     *洹몃９踰덊샇媛� 媛��옣 理쒖떊�쓽 湲��쓣 以묒떖�쑝濡� �젙�젹�븯�릺,留뚯빟�뿉 level�씠 媛숈� 寃쎌슦�뿉�뒗
		     *step媛믪쑝濡� �삤由꾩감�닚�쓣 �넻�빐�꽌 紐뉖쾲吏� �젅肄붾뱶踰덊샇瑜� 湲곗��빐�꽌 �젙�젹�븷寃껋씤媛�? 
		     */
			sql="select * from questionboard order by ref desc,re_step asc limit ?,?";//1,10
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, start-1);//mysql�� �젅肄붾뱶�닚踰덉씠 �궡遺��쟻�쑝濡� 0遺��꽣 �떆�옉
			pstmt.setInt(2, end);
			rs=pstmt.executeQuery();
			//湲�紐⑸줉蹂닿린
			if(rs.next()) {//�젅肄붾뱶媛� 理쒖냼 留뚯” 1媛쒖씠�긽 議댁옱�븳�떎硫�
				articleList=new ArrayList(end);//10=>end媛��닔留뚰겮 �뜲�씠�꽣瑜� �떞�쓣 怨듦컙�쓣 �깮�꽦�븯�씪
				do {
					PlzWindowDTO article=new PlzWindowDTO();//MemberDTO~
					article.setNum(rs.getInt("quest_number"));
					article.setWriter(rs.getString("mem_id"));
					article.setSubject(rs.getString("quest_title"));
<<<<<<< HEAD
					article.setReg_date(rs.getTimestamp("quest_date"));//오늘날짜->코딩 ->now()
					article.setReadcount(rs.getInt("readcount"));//default->0
					article.setRef(rs.getInt("ref"));//그룹번호->신규글과 답변글 묶어주는 역할
					article.setRe_step(rs.getInt("re_step"));//답변글이 나오는 순서(0,1,2,3,,오름차순)
					article.setRe_level(rs.getInt("re_level"));//들여쓰기(답변의 깊이)
					article.setContent(rs.getString("quest_content"));//글내용
=======
					article.setReg_date(rs.getTimestamp("quest_date"));//�삤�뒛�궇吏�->肄붾뵫 ->now()
					//article.setReadcount(rs.getInt("readcount"));//default->0
					article.setRef(rs.getInt("ref"));//洹몃９踰덊샇->�떊洹쒓�怨� �떟蹂�湲� 臾띠뼱二쇰뒗 �뿭�븷
					article.setRe_step(rs.getInt("re_step"));//�떟蹂�湲��씠 �굹�삤�뒗 �닚�꽌(0,1,2,3,,�삤由꾩감�닚)
					article.setRe_level(rs.getInt("re_level"));//�뱾�뿬�벐湲�(�떟蹂��쓽 源딆씠)
					article.setContent(rs.getString("quest_content"));//湲��궡�슜
>>>>>>> branch 'Soo' of https://github.com/Vulpes-Lagopus/Plz_Window.git
					                                              //request.getRemoteAddr()
					//異붽�
					articleList.add(article);
				}while(rs.next());
			}
		}catch(Exception e) {
			System.out.println("getArticles() 硫붿꽌�뱶 �뿉�윭�쑀諛�"+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);
		}
		return articleList;
	}
	//------------------------------------------------------------------------
	//(2)寃��깋�뼱�뿉 �뵲瑜� �젅肄붾뱶�쓽 踰붿쐞吏��젙�뿉 ���븳 硫붿꽌�뱶
	
public List getBoardArticles(int start,int end,String search,String searchtext) {
		
		List articleList=null;//ArrayList articleList=null;
		
		try {
			con=pool.getConnection();
		    //---------------------------------------------------------------------------
			if(search==null || search=="") {
				sql="select * from questionboard order by ref desc,re_step asc limit ?,?";//1,10
			}else { //�젣紐�+蹂몃Ц
				if(search.equals("subject_content")) { //�젣紐�+蹂몃Ц
					sql="select * from questionboard where subject like '%"+
				           searchtext+"%' or content like '%"+searchtext+"%' order by ref desc,re_step asc limit ?,?";
				}else { //�젣紐�,�옉�꽦�옄->留ㅺ컻蹂��닔瑜� �씠�슜�빐�꽌 �븯�굹�쓽 sql�넻�빀
					sql="select * from questionboard where "+search+" like '%"+
				           searchtext+"%' order by ref desc,re_step asc limit ?,?";
				}
			}
			System.out.println("getBoardArticles()�쓽 sql=>"+sql);
			//-----------------------------------------------------------------------------
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, start-1);//mysql�� �젅肄붾뱶�닚踰덉씠 �궡遺��쟻�쑝濡� 0遺��꽣 �떆�옉
			pstmt.setInt(2, end);
			rs=pstmt.executeQuery();
			//湲�紐⑸줉蹂닿린
			if(rs.next()) {//�젅肄붾뱶媛� 理쒖냼 留뚯” 1媛쒖씠�긽 議댁옱�븳�떎硫�
				articleList=new ArrayList(end);//10=>end媛��닔留뚰겮 �뜲�씠�꽣瑜� �떞�쓣 怨듦컙�쓣 �깮�꽦�븯�씪
				do {
					PlzWindowDTO article=new PlzWindowDTO();//MemberDTO~
					article.setNum(rs.getInt("quest_number"));
					article.setWriter(rs.getString("mem_id"));
					article.setSubject(rs.getString("quest_title"));
<<<<<<< HEAD
					article.setReg_date(rs.getTimestamp("quest_date"));//오늘날짜->코딩 ->now()
					article.setReadcount(rs.getInt("readcount"));//default->0
					article.setRef(rs.getInt("ref"));//그룹번호->신규글과 답변글 묶어주는 역할
					article.setRe_step(rs.getInt("re_step"));//답변글이 나오는 순서(0,1,2,3,,오름차순)
					article.setRe_level(rs.getInt("re_level"));//들여쓰기(답변의 깊이)
					article.setContent(rs.getString("quest_content"));//글내용
=======
					article.setReg_date(rs.getTimestamp("quest_date"));//�삤�뒛�궇吏�->肄붾뵫 ->now()
					//article.setReadcount(rs.getInt("readcount"));//default->0
					article.setRef(rs.getInt("ref"));//洹몃９踰덊샇->�떊洹쒓�怨� �떟蹂�湲� 臾띠뼱二쇰뒗 �뿭�븷
					article.setRe_step(rs.getInt("re_step"));//�떟蹂�湲��씠 �굹�삤�뒗 �닚�꽌(0,1,2,3,,�삤由꾩감�닚)
					article.setRe_level(rs.getInt("re_level"));//�뱾�뿬�벐湲�(�떟蹂��쓽 源딆씠)
					article.setContent(rs.getString("quest_content"));//湲��궡�슜
>>>>>>> branch 'Soo' of https://github.com/Vulpes-Lagopus/Plz_Window.git
					                                              //request.getRemoteAddr()
					//異붽�
					articleList.add(article);
				}while(rs.next());
			}
		}catch(Exception e) {
			System.out.println("getArticles() 硫붿꽌�뱶 �뿉�윭�쑀諛�"+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);
		}
		return articleList;
	}
	//---(3)�럹�씠吏� 泥섎━怨꾩궛 �젙由ы빐二쇰뒗 硫붿꽌�뱶(ListAction)-------------------------------------
    //1)�솕硫댁뿉 蹂댁뿬二쇰뒗 �럹�씠吏�踰덊샇  2) �솕硫댁뿉 異쒕젰�븷 �젅肄붾뱶媛��닔
    //Hashtable=>�럹�씠吏� 泥섎━�뿉 愿��젴�맂 泥섎━寃곌낵瑜� ���옣�븳 蹂��닔�뱾�쓣 �븯�굹�쓽 媛앹껜�뿉 �떞�븘�꽌 ->ListAction
    public Hashtable pageList(String pageNum,int count) {
    	
    	//1.�럹�씠吏� 泥섎━寃곌낵瑜� ���옣�븷 hashtable媛앹껜瑜� �꽑�뼵
    	Hashtable<String,Integer> pgList=new Hashtable<String,Integer>();
<<<<<<< HEAD
    	//ListAction에서의 복잡한 페이징처리를 대신 처리
	     int pageSize=10;//numPerPage->페이지당 보여주는 게시물수(=레코드수) 10
	     int blockSize=10;//pagePerBlock->블럭당 보여주는 페이지수 10
=======
    	//ListAction�뿉�꽌�쓽 蹂듭옟�븳 �럹�씠吏뺤쿂由щ�� ���떊 泥섎━
	     int pageSize=5;//numPerPage->�럹�씠吏��떦 蹂댁뿬二쇰뒗 寃뚯떆臾쇱닔(=�젅肄붾뱶�닔) 10
	     int blockSize=3;//pagePerBlock->釉붾윮�떦 蹂댁뿬二쇰뒗 �럹�씠吏��닔 10
>>>>>>> branch 'Soo' of https://github.com/Vulpes-Lagopus/Plz_Window.git
	     
	    //寃뚯떆�뙋�쓣 留� 泥섏쓬 �떎�뻾�떆�궎硫� 臾댁“嫄� 1�럹�씠吏�遺��꽣 異쒕젰
	    if(pageNum==null){
	    	pageNum="1";//default(臾댁“嫄� 1�럹�씠吏��뒗 �꽑�깮�븯吏� �븡�븘�룄 蹂댁뿬以섏빞 �븯湲곕븣臾몄뿉),媛��옣 理쒓렐�쓽 湲�
	    }
	    int currentPage=Integer.parseInt(pageNum);//"1"->1 �쁽�옱�럹�씠吏�(=nowPage)
	    //硫붿꽌�뱶 �샇異�->�떆�옉 �젅肄붾뱶踰덊샇
	    //                  (1-1)*10+1=1,(2-1)*10+1=11,(3-1)*10+1=21)
	    int startRow=(currentPage-1)*pageSize+1; //�떆�옉 �젅肄붾뱶 踰덊샇
	    int endRow=currentPage*pageSize;//1*10=10,2*10=20,3*10=30 ->留덉�留� �젅肄붾뱶踰덊샇
	    int number=0;//beginPerPage->�럹�씠吏�蹂꾨줈 �떆�옉�븯�뒗 留� 泥섏쓬�뿉 �굹�삤�뒗 寃뚯떆臾쇰쾲�샇
	    System.out.println("�쁽�옱 �젅肄붾뱶�닔(count)=>"+count);
	    //            122-(1-1)*10=122,122-(2-1)*10=112
	    number=count-(currentPage-1)*pageSize;
	    System.out.println("�럹�씠吏�蹂� number=>"+number);
	    
	    //珥앺럹�씠吏��닔,�떆�옉,醫낅즺�럹�씠吏� 怨꾩궛
	    //                      122/10=12.2+1=>12.2+1.0=13.2=13�럹�씠吏�
	       int pageCount=count/pageSize+(count%pageSize==0?0:1);
	    //釉붾윮�떦 �럹�씠吏��닔 怨꾩궛->10->10諛곗닔,3->3諛곗닔
	       int startPage=0;//1,2,3,,,,10 [�떎�쓬 釉붾윮 10]->11,12,,,,20
	       if(currentPage%blockSize!=0){//1~9,11~19,21~29
	    	   startPage=currentPage/blockSize*blockSize+1;
	       }else{ //10%10=0,(10,20,30)
	    		               //((10/10)-1)*10+1
	    	   startPage=((currentPage/blockSize)-1)*blockSize+1;
	       }
	       int endPage=startPage+blockSize-1;//1+10-1=10
	       System.out.println("startPage="+startPage+",endPage="+endPage);
	       if(endPage > pageCount)
	    	   endPage=pageCount;//留덉�留됲럹�씠吏�=珥앺럹�씠吏��닔
	       //�럹�씠吏뺤쿂由ъ뿉 ���븳 怨꾩궛寃곌낵->Hashtable,HashMap->ListAction�쟾�떖->硫붾え由ъ뿉 ���옣->list.jsp
	       pgList.put("pageSize", pageSize);//<->pgList.get(�궎紐�)("pageSize")
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
	//------ 寃뚯떆�뙋�쓽 湲��벐湲� 諛� �떟蹂�湲��벐湲�----------------
	//insert into board values(?,?,,,)
	public void insertArticle(PlzWindowDTO article) { //~(MemberDTO mem)
		
		//1.article=>�떊洹쒓��씤吏� �떟蹂�湲��씤吏� �솗�씤
		int num=article.getNum();//0(�떊洹쒓�) 0�븘�땶寃쎌슦(�떟蹂�湲�)
		int ref=article.getRef();
		int re_step=article.getRe_step();
		int re_level=article.getRe_level();
		//�뀒�씠釉붿뿉 �엯�젰�븷 寃뚯떆臾쇰쾲�샇瑜� ���옣�븷 蹂��닔
		int number=0;//�뜲�씠�꽣瑜� ���옣�븯湲곗쐞�븳 寃뚯떆臾쇰쾲�샇
		System.out.println("insertArticle 硫붿꽌�뱶�쓽 �궡遺� num=>"+num);//0�떊洹쒓�
		System.out.println("ref=>"+ref+",re_step=>"+re_step+",re_level=>"+re_level);
		
		try {
			con=pool.getConnection();
			sql="select max(quest_number) from questionboard"; //理쒕�媛�+1=�떎�젣 ���옣�븷 寃뚯떆臾쇰쾲�샇
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {//蹂댁뿬二쇰뒗 寃곌낵媛� �엳�떎硫� ->rs.last()->rs.getRow();(X)
				number=rs.getInt(1)+1;  //蹂��닔紐�=rs.get�옄猷뚰삎(�븘�뱶紐� �삉�뒗 �씤�뜳�뒪踰덊샇)=>�븘�뱶紐꿟�쓣 �궗�슜�븷 �닔 �뾾�뒗 寃쎌슦�뿉 �궗�슜
			}else {//�쁽�옱 �뀒�씠釉붿뿉 �뜲�씠�꽣媛� �븳媛쒕씪�룄 �뾾�뒗 寃쎌슦
				number=1;
			}
			//�떟蹂�湲��씠�씪硫�
			if(num!=0) { //�뼇�닔硫댁꽌 1�씠�긽
				//媛숈� 洹몃９踰덊샇瑜� 媛�吏�怨� �엳�쑝硫댁꽌 �굹蹂대떎 step媛믪씠 �겙�냸�쓣 李얠븘�꽌  洹� step媛믪쓣 �븯�굹 利앷�
				sql="update questionboard set re_step=re_step+1 where ref=? and re_step > ?";
				pstmt=con.prepareStatement(sql);
				pstmt.setInt(1, ref);
				pstmt.setInt(2, re_step);
				int update=pstmt.executeUpdate();
				System.out.println("�뙎湲��닔�젙�쑀臾�(update)=>"+update);//1(�꽦怨�)
				//�떟蹂�湲�
				re_step=re_step+1;
				re_level=re_level+1;
			}else {//�떊洹쒓��씠�씪硫� num=0(�떊洹쒓�)
				ref=number;//1,2,3,4,5,,,,
				re_step=0;
				re_level=0;
			}
			//12媛�->num,reg_date,reacount(�깮�왂)->default,
			//�옉�꽦�궇吏�->sysdate,now()<-mysql(?���떊�뿉)
			sql="insert into questionboard(mem_id,quest_title,quest_writer,quest_content,quest_date,";
			sql+="ref,re_step,re_level) values('scott',?,'scott',?,?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, article.getSubject());
			pstmt.setString(2, article.getContent());
			pstmt.setTimestamp(3, article.getReg_date());//? ���떊�뿉 now()(�쎒�긽�뿉�꽌 怨꾩궛�빐�꽌 ���옣)
			//--------ref,re_step,re_level�뿉 ���븳 怨꾩궛�씠 �쟻�슜�씠 �맂�긽�깭�뿉�꽌 ���옣----------------------
			pstmt.setInt(4, ref);//pstmt.setInt(6, article.getRef());(X)
			pstmt.setInt(5, re_step);
			pstmt.setInt(6, re_level);
			//--------------------------------------------------------
			
			int insert=pstmt.executeUpdate();
			System.out.println("寃뚯떆�뙋�쓽 湲��벐湲� �꽦怨듭쑀臾�(insert)=>"+insert);//1 or 0�떎�뙣
		}catch(Exception e) {
			System.out.println("insertArticle() 硫붿꽌�뱶 �뿉�윭�쑀諛�"+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);
		}
	}
	//湲��긽�꽭 蹂닿린
	//content.jsp?num=<%=article.getNum()%>&pageNum=<%=currentPage%>">
	//�삎�떇) select * from board where num=3
	//�삎�떇) update board set readcount=readcount+1 where num=3
	public PlzWindowDTO getArticle(int num) {
		
		PlzWindowDTO article=null;//ArrayList articleList=null;
				try {
					con=pool.getConnection();
				  
					sql="update questionboard set readcount=readcount+1 where quest_number=?";//1,10
					pstmt=con.prepareStatement(sql);
					pstmt.setInt(1, num);//mysql�� �젅肄붾뱶�닚踰덉씠 �궡遺��쟻�쑝濡� 0遺��꽣 �떆�옉
					int update=pstmt.executeUpdate();
					System.out.println("議고쉶�닔 利앷��쑀臾�(update)=>"+update);//1
					
					sql="select * from questionboard where quest_number=?";//1,10
					pstmt=con.prepareStatement(sql);
					pstmt.setInt(1, num);
					rs=pstmt.executeQuery();
					//湲�紐⑸줉蹂닿린
					if(rs.next()) {//�젅肄붾뱶媛� 理쒖냼 留뚯” 1媛쒖씠�긽 議댁옱�븳�떎硫�
						    //article=new BoardDTO();//MemberDTO~
						    article=makeArticleFromResult();//諛섑솚�삎�쓣 �뼸�뼱���꽌 泥섎━
						    /*
							article.setNum(rs.getInt("num"));
							article.setWriter(rs.getString("writer"));
							article.setEmail(rs.getString("email"));
							article.setSubject(rs.getString("subject"));
							article.setPasswd(rs.getString("passwd"));
							article.setReg_date(rs.getTimestamp("reg_date"));//�삤�뒛�궇吏�->肄붾뵫 ->now()
							article.setReadcount(rs.getInt("readcount"));//default->0
							article.setRef(rs.getInt("ref"));//洹몃９踰덊샇->�떊洹쒓�怨� �떟蹂�湲� 臾띠뼱二쇰뒗 �뿭�븷
							article.setRe_step(rs.getInt("re_step"));//�떟蹂�湲��씠 �굹�삤�뒗 �닚�꽌(0,1,2,3,,�삤由꾩감�닚)
							article.setRe_level(rs.getInt("re_level"));//�뱾�뿬�벐湲�(�떟蹂��쓽 源딆씠)
							article.setContent(rs.getString("content"));//湲��궡�슜
							article.setIp(rs.getString("ip"));//湲��벖�씠�쓽 ip二쇱냼
							*/
					}
				}catch(Exception e) {
					System.out.println("getArticle() 硫붿꽌�뱶 �뿉�윭�쑀諛�"+e);
				}finally {
					pool.freeConnection(con,pstmt,rs);
				}
				return article;
			}
	//-----------以묐났�맂 �젅肄붾뱶 �븳媛쒕�� �떞�쓣 �닔 �엳�뒗 硫붿꽌�뱶瑜� �뵲濡� 留뚮뱾�뼱�꽌 泥섎━------------	
	private PlzWindowDTO makeArticleFromResult() throws Exception {
		PlzWindowDTO article=new PlzWindowDTO();
<<<<<<< HEAD
		article.setNum(rs.getInt("quest_number"));
		article.setWriter(rs.getString("mem_id"));
		article.setSubject(rs.getString("quest_title"));
		article.setReg_date(rs.getTimestamp("quest_date"));//오늘날짜->코딩 ->now()
=======
		article.setNum(rs.getInt("num"));
		article.setWriter(rs.getString("writer"));
		article.setSubject(rs.getString("subject"));
		article.setPasswd(rs.getString("passwd"));
		article.setReg_date(rs.getTimestamp("reg_date"));//�삤�뒛�궇吏�->肄붾뵫 ->now()
>>>>>>> branch 'Soo' of https://github.com/Vulpes-Lagopus/Plz_Window.git
		article.setReadcount(rs.getInt("readcount"));//default->0
<<<<<<< HEAD
		article.setRef(rs.getInt("ref"));//그룹번호->신규글과 답변글 묶어주는 역할
		article.setRe_step(rs.getInt("re_step"));//답변글이 나오는 순서(0,1,2,3,,오름차순)
		article.setRe_level(rs.getInt("re_level"));//들여쓰기(답변의 깊이)
		article.setContent(rs.getString("quest_content"));//글내용
=======
		article.setRef(rs.getInt("ref"));//洹몃９踰덊샇->�떊洹쒓�怨� �떟蹂�湲� 臾띠뼱二쇰뒗 �뿭�븷
		article.setRe_step(rs.getInt("re_step"));//�떟蹂�湲��씠 �굹�삤�뒗 �닚�꽌(0,1,2,3,,�삤由꾩감�닚)
		article.setRe_level(rs.getInt("re_level"));//�뱾�뿬�벐湲�(�떟蹂��쓽 源딆씠)
		article.setContent(rs.getString("content"));//湲��궡�슜
>>>>>>> branch 'Soo' of https://github.com/Vulpes-Lagopus/Plz_Window.git
		return article;
		
	}
	
	
	//-----------------------------------------------------------------------------
	//,湲��닔�젙,
	//1)�닔�젙�븷 �뜲�씠�꽣瑜� 李얠쓣 硫붿꽌�뱶 �븘�슂=>select * from board where num=? =>議고쉶�닔瑜� 利앷�X
	public PlzWindowDTO updateGetArticle(int num) {
		PlzWindowDTO article=null;//ArrayList articleList=null;
		try {
			con=pool.getConnection();
		  
			sql="select * from questionboard where quest_number=?";//1,10
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			//湲�紐⑸줉蹂닿린
			if(rs.next()) {//�젅肄붾뱶媛� 理쒖냼 留뚯” 1媛쒖씠�긽 議댁옱�븳�떎硫�
				   article=makeArticleFromResult();
				   /*
				    article=new BoardDTO();//MemberDTO~
					article.setNum(rs.getInt("num"));
					article.setWriter(rs.getString("writer"));
					article.setEmail(rs.getString("email"));
					article.setSubject(rs.getString("subject"));
					article.setPasswd(rs.getString("passwd"));
					article.setReg_date(rs.getTimestamp("reg_date"));//�삤�뒛�궇吏�->肄붾뵫 ->now()
					article.setReadcount(rs.getInt("readcount"));//default->0
					article.setRef(rs.getInt("ref"));//洹몃９踰덊샇->�떊洹쒓�怨� �떟蹂�湲� 臾띠뼱二쇰뒗 �뿭�븷
					article.setRe_step(rs.getInt("re_step"));//�떟蹂�湲��씠 �굹�삤�뒗 �닚�꽌(0,1,2,3,,�삤由꾩감�닚)
					article.setRe_level(rs.getInt("re_level"));//�뱾�뿬�벐湲�(�떟蹂��쓽 源딆씠)
					article.setContent(rs.getString("content"));//湲��궡�슜
					article.setIp(rs.getString("ip"));//湲��벖�씠�쓽 ip二쇱냼
					*/
			}
		}catch(Exception e) {
			System.out.println("updateGetArticle() 硫붿꽌�뱶 �뿉�윭�쑀諛�"+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);
		}
		return article;
	}
	
	//2)�닔�젙�떆�궎�뒗 硫붿꽌�뱶 �옉�꽦=>蹂몄씤�씤吏� �솗�씤�젅李�=>�쉶�썝�깉�눜�븷�븣(�븫�샇瑜� 鍮꾧탳->�깉�눜)
	public int updateArticle(PlzWindowDTO article) { //insertArticle
		
		String dbpasswd=null;//db�뿉�꽌 李얠� �븫�샇瑜� ���옣
		int x=-1;//寃뚯떆臾쇱쓽 �닔�젙�꽦怨듭쑀臾�
		
		try {
			con=pool.getConnection();
<<<<<<< HEAD
			sql="select passwd from questionboard where quest_number=?"; //최대값+1=실제 저장할 게시물번호
=======
			sql="select passwd from questionboard where quest_number=?"; //理쒕�媛�+1=�떎�젣 ���옣�븷 寃뚯떆臾쇰쾲�샇
>>>>>>> branch 'Soo' of https://github.com/Vulpes-Lagopus/Plz_Window.git
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,article.getNum() );
			rs=pstmt.executeQuery();
			if(rs.next()) {//蹂댁뿬二쇰뒗 寃곌낵媛� �엳�떎硫� ->rs.last()->rs.getRow();(X)
				dbpasswd=rs.getString("passwd");
				System.out.println("dbpasswd=>"+dbpasswd);//�솗�씤�븳�뮘�뿉 �굹以묒뿉 �궘�젣
			   
			   if(dbpasswd.contentEquals(article.getPasswd())) {			
					sql="update questionboard set writer=?,email=?,subject=?,passwd=?,";
					sql+="content=?  where quest_number=?";
					pstmt=con.prepareStatement(sql);
					pstmt.setString(1, article.getWriter());//�쎒�뿉�꽌�뒗 Setter Method瑜� 硫붾え由ъ뿉 ���옣
					pstmt.setString(3, article.getSubject());
					pstmt.setString(4, article.getPasswd());
					pstmt.setString(5, article.getContent());
					pstmt.setInt(6, article.getNum());
					int update=pstmt.executeUpdate();
					System.out.println("寃뚯떆�뙋�쓽 湲��닔�젙 �꽦怨듭쑀臾�(update)=>"+update);//1 or 0�떎�뙣
					x=1;//�닔�젙�꽦怨� �몴�떆
			   }else {//�븫�샇媛� ��由곌꼍�슦
				   x=0;//�닔�젙 �떎�뙣
			   }
			}else { //if(rs.next())
				x=-1; //李얠� �뜲�씠�꽣媛� �뾾�뒗 寃쎌슦(�깮�왂媛��뒫)
			}
		}catch(Exception e) {
			System.out.println("updateArticle() 硫붿꽌�뱶 �뿉�윭�쑀諛�"+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);
		}
		return x;
	}
	
	//湲��궘�젣=>�븫�샇瑜� 鍮꾧탳->delete from board where num=3
	public int deleteArticle(int num,String passwd) {
		
		String dbpasswd=null;//db�뿉�꽌 李얠� �븫�샇瑜� ���옣
		int x=-1;//寃뚯떆臾쇱쓽 �궘�젣�꽦怨듭쑀臾�
		
		try {
			con=pool.getConnection();
<<<<<<< HEAD
			sql="select passwd from questionboard where quest_number=?"; //최대값+1=실제 저장할 게시물번호
=======
			sql="select passwd from questionboard where quest_number=?"; //理쒕�媛�+1=�떎�젣 ���옣�븷 寃뚯떆臾쇰쾲�샇
>>>>>>> branch 'Soo' of https://github.com/Vulpes-Lagopus/Plz_Window.git
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,num );
			rs=pstmt.executeQuery();//select援щЦ�쓣 �궗�슜
			if(rs.next()) {//蹂댁뿬二쇰뒗 寃곌낵媛� �엳�떎硫� ->rs.last()->rs.getRow();(X)
				dbpasswd=rs.getString("passwd");
				System.out.println("dbpasswd=>"+dbpasswd);//�솗�씤�븳�뮘�뿉 �굹以묒뿉 �궘�젣
			   
<<<<<<< HEAD
			   if(dbpasswd.contentEquals(passwd)) {	//DB상의 암호=웹상의 암호		
					sql="delete from questionboard where quest_number=?";
					pstmt=con.prepareStatement(sql);//pstmt=>new연산자를 통해서 값을 
=======
			   if(dbpasswd.contentEquals(passwd)) {	//DB�긽�쓽 �븫�샇=�쎒�긽�쓽 �븫�샇		
					sql="delete from questionboard where quest_number=?";
					pstmt=con.prepareStatement(sql);//pstmt=>new�뿰�궛�옄瑜� �넻�빐�꽌 媛믪쓣 
>>>>>>> branch 'Soo' of https://github.com/Vulpes-Lagopus/Plz_Window.git
					pstmt.setInt(1, num);
					int delete=pstmt.executeUpdate();//sql援щЦ�쓣 �떎�뻾�떆�궎�뒗 硫붿꽌�뱶(�뀒�씠釉붿쓽 援ъ“)
					//insert,update(蹂�寃�),delete=>create,alter,drop
					System.out.println("寃뚯떆�뙋�쓽 湲��궘�젣 �꽦怨듭쑀臾�(delete)=>"+delete);//1 or 0�떎�뙣
					x=1;//�궘�젣�꽦怨� �몴�떆
			   }else {//�븫�샇媛� ��由곌꼍�슦
				   x=0;//�궘�젣 �떎�뙣
			   }
			}//if(rs.next())
		}catch(Exception e) {
			System.out.println("deleteArticle() 硫붿꽌�뱶 �뿉�윭�쑀諛�"+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);
		}
		return x;
	}
}






