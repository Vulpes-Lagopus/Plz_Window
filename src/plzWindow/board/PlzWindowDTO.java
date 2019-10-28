package plzWindow.board;

import java.sql.Timestamp;//�궇吏쒖� �떆媛꾩쓣 �꽕�젙�븷�븣 �궗�슜�븯�뒗 �겢�옒�뒪

public class PlzWindowDTO {

	private int num;//寃뚯떆臾쇰쾲�샇
	//--�늿�뿉 蹂댁씠�뒗 �긽�깭(�엯�젰)
	//                    �옉�꽦�옄     湲��젣紐�   �씠硫붿씪   湲��궡�슜    �븫�샇(->湲��벐湲�->蹂몄씤 =>湲��닔�젙,湲��궘�젣�븷�븣)
	private String writer,subject,content,passwd;
	//吏곸젒 �엯�젰X
	private Timestamp reg_date;//�옉�꽦�궇吏�->sysdate<->now()(Mysql�쓽 �궡�옣�븿�닔)
	private int readcount;//議고쉶�닔->default->0�쓣 遺��뿬
	//�떟蹂��삎
	private int ref;//湲� 洹몃９踰덊샇(=寃뚯떆臾� 踰덊샇)
	private int re_step;//�떟蹂�湲��쓽 �닚�꽌瑜� 吏��젙(=媛숈� 洹몃９�씪�븣�쓽 �떟蹂�湲� �닚�꽌)
	private int re_level;//�떟蹂�湲��쓽 �떟蹂��뿉 ���븳 源딆씠(=depth)
	//----------------------------------------------------------
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getRe_step() {
		return re_step;
	}
	public void setRe_step(int re_step) {
		this.re_step = re_step;
	}
	public int getRe_level() {
		return re_level;
	}
	public void setRe_level(int re_level) {
		this.re_level = re_level;
	}
	
	
}









