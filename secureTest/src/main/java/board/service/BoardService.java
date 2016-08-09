package board.service;

import java.util.ArrayList;

import board.dto.BoardDTO;

//DeptDAOImpl의 메소드를 호출하는 객체
public interface BoardService {
	int register(BoardDTO dept);//DeptDAOImpl의 insert()를 호출하는 메소드,커넥션도 넘긴다.
	ArrayList<BoardDTO> getDeptList();
	
}
