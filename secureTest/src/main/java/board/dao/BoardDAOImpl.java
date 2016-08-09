package board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import board.dto.BoardDTO;
import util.DBUtil;
@Repository
public class BoardDAOImpl implements BoardDAO {
	@Override
	public ArrayList<BoardDTO> getDeptList(Connection conn) 
										throws SQLException	{
		ArrayList<BoardDTO> deptlist = new ArrayList<BoardDTO>();
		System.out.println("dao");
		PreparedStatement ptmt = conn.prepareStatement("select * from board2");
		ResultSet rs = ptmt.executeQuery();
		while(rs.next()){
			//레코드의 데이터를 DTO로 변환
			BoardDTO dept = new BoardDTO(rs.getString(1),
					rs.getString(2), rs.getString(3)
					,rs.getString(4));
			//ArrayList에 보관
			deptlist.add(dept);			
		}
		System.out.println("dao=>"+deptlist.size());
		DBUtil.close(rs, ptmt, null);
		return deptlist;
	}
	@Override
	public int insert(BoardDTO board,Connection conn) throws SQLException{
		PreparedStatement ptmt = 
				conn.prepareStatement("insert into board2 values(board_seq.nextval,?,?,?)");
		ptmt.setString(1, board.getTitle());
		ptmt.setString(2, "jang1");
		ptmt.setString(3, board.getContent());
		System.out.println(board);
		int result = ptmt.executeUpdate();
		DBUtil.close(null, ptmt, null);
		return result;
	}

	

}













