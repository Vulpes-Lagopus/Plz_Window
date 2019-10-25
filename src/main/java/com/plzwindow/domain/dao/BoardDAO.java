package main.java.com.plzwindow.domain.dao;

import java.util.*;//List,Map
import main.java.com.plzwindow.domain.BoardCommand;

public interface BoardDAO {
    //1.글목록보기
	public List<BoardCommand> list(Map<String,Object>map);
	
	//2.총레코드수(검색어에 맞는 레코드수까지 포함)
	public int getRowCount(Map<String,Object> map);
	
	//3.최대글번호 구하기
	public int getNewSeq();
	
	//4.게시판의 글쓰기
	public void insert(BoardCommand board);
}









