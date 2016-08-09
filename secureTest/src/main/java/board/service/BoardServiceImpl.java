package board.service;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Service;

import board.dao.BoardDAO;
import board.dao.BoardDAOImpl;
import board.dto.BoardDTO;
import util.DBUtil;
@Service
public class BoardServiceImpl implements BoardService {
	//Connection생성
	//DAO 의 메소드 호출 - Exception에 대한 처리
	//자원반납
	@Override
	public ArrayList<BoardDTO> getDeptList() {
		ArrayList<BoardDTO> deptlist = null;
		Connection conn = DBUtil.getConnect();
		System.out.println("서비스");
		BoardDAO dao = new BoardDAOImpl();
		try {
			deptlist = dao.getDeptList(conn);
			System.out.println("service=>"+deptlist.size());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DBUtil.close(null, null, conn);
	
		return deptlist;
	}
	@Override
	public int register(BoardDTO dept) {
		Connection conn = DBUtil.getConnect();
		BoardDAO dao = new BoardDAOImpl();
		int result=0;
		try {
			result = dao.insert(dept, conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DBUtil.close(null, null, conn);
		return result;
	}
}













