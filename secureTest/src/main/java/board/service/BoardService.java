package board.service;

import java.util.ArrayList;

import board.dto.BoardDTO;

//DeptDAOImpl�� �޼ҵ带 ȣ���ϴ� ��ü
public interface BoardService {
	int register(BoardDTO dept);//DeptDAOImpl�� insert()�� ȣ���ϴ� �޼ҵ�,Ŀ�ؼǵ� �ѱ��.
	ArrayList<BoardDTO> getDeptList();
	
}
