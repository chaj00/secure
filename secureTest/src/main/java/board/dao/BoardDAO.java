package board.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import board.dto.BoardDTO;

public interface BoardDAO {
	int insert(BoardDTO board,Connection conn) throws SQLException;//�μ����
	ArrayList<BoardDTO> getDeptList(Connection conn)
								throws SQLException;//��ü�μ������ȸ
	      
}








