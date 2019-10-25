package main.java.com.plzwindow.domain.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import main.java.com.plzwindow.domain.BoardCommand;

public class BoardDaoImpl extends SqlSessionDaoSupport implements BoardDAO {

	public List<BoardCommand> list(Map<String, Object> map) {
		// TODO Auto-generated method stub
		List<BoardCommand> list=getSqlSession().selectList("selectList",map);
		System.out.println("list()호출됨!");
		return list;
	}

	public int getRowCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		System.out.println("getRowCount()호출됨!");
		return getSqlSession().selectOne("selectCount",map);
	}
	
	public int getNewSeq() {
		// TODO Auto-generated method stub
		//Object->Integer->int(자동으로 변경이 된다.박싱,언박싱)
		int newseq=(Integer)getSqlSession().selectOne("getNewSeq");
		System.out.println("getNewSeq()의 newseq=>"+newseq);
		return newseq;
	}
	
	public void insert(BoardCommand board) {//board->이미 setter를 통한 데이터 저장이 끝난상태
		// TODO Auto-generated method stub
		getSqlSession().insert("insertBoard",board);//#{seq}->getter로 호출
	}
}






