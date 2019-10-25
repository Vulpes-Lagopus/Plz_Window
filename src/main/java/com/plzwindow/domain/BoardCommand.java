package main.java.com.plzwindow.domain;

import java.sql.Date;//날짜

//commons-fileupload~.jar
import org.springframework.web.multipart.MultipartFile;

//테이블의 필드와 연관이 있는 클래스(DTO)
public class BoardCommand {

	private String id, pwd, name, phone, email, role;
	private String title, content, content_sub, content_sub2, content_sub3;
	private int num, readcount, pagenum;
	private Date regdate, writedate;
	
	
	
	public String getId() {
		return id;
	}
	public String getPwd() {
		return pwd;
	}
	public String getName() {
		return name;
	}
	public String getPhone() {
		return phone;
	}
	public String getEmail() {
		return email;
	}
	public String getRole() {
		return role;
	}
	public String getTitle() {
		return title;
	}
	public String getContent() {
		return content;
	}
	public String getContent_sub() {
		return content_sub;
	}
	public String getContent_sub2() {
		return content_sub2;
	}
	public String getContent_sub3() {
		return content_sub3;
	}
	public int getNum() {
		return num;
	}
	public int getReadcount() {
		return readcount;
	}
	public int getPagenum() {
		return pagenum;
	}
	public Date getRegdate() {
		return regdate;
	}
	public Date getWritedate() {
		return writedate;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setContent_sub(String content_sub) {
		this.content_sub = content_sub;
	}
	public void setContent_sub2(String content_sub2) {
		this.content_sub2 = content_sub2;
	}
	public void setContent_sub3(String content_sub3) {
		this.content_sub3 = content_sub3;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public void setPagenum(int pagenum) {
		this.pagenum = pagenum;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public void setWritedate(Date writedate) {
		this.writedate = writedate;
	}
	
	
}






