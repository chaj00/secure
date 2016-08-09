package board.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import board.dto.BoardDTO;

public interface BoardDAO {
	int insert(BoardDTO board,Connection conn) throws SQLException;//부서등록
	ArrayList<BoardDTO> getDeptList(Connection conn)
								throws SQLException;//전체부서목록조회
	      
}








