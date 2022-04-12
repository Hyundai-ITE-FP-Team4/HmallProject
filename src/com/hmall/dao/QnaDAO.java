package com.hmall.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hmall.dto.OrderInfoVO;
import com.hmall.dto.QnaVO;

import util.DBManager;

public class QnaDAO {
	private QnaDAO() {  } //싱글톤 패턴
	private static  QnaDAO instance = new QnaDAO();
	
	public static QnaDAO getInstance() {
	return instance;
	}
	
	
	// 유저 별 등록한 게시판 전체 조회 구현 필요(황명하)
	public ArrayList<QnaVO> listAllQna(String user_id) {
		ArrayList<QnaVO> qnaList = new ArrayList<QnaVO>();

		String sql = "select board_no, product_code, user_id, to_char(board_date, 'YYYY-MM-DD HH24:MI:SS') as board_date, category1, category2, question, image, answer from qna_t where user_id = '"+ user_id +"' order by board_date desc";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			//pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				QnaVO qnaVO = new QnaVO();
				qnaVO.setBoardNo(rs.getInt("board_no"));
				qnaVO.setProductCode(rs.getInt("product_code"));
				qnaVO.setUserId(rs.getNString("user_id"));
				System.out.println(rs.getTimestamp("board_date"));
				qnaVO.setBoardDate(rs.getTimestamp("board_date"));
				qnaVO.setCategory1(rs.getString("category1"));
				qnaVO.setCategory2(rs.getString("category2"));
				qnaVO.setQuestion(rs.getString("question"));
				qnaVO.setImage(rs.getString("image"));
				qnaVO.setAnswer(rs.getString("answer"));
				qnaList.add(qnaVO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} /*
			 * finally { DBManager.close(conn, pstmt, rs); }
			 */
		return qnaList;
	}
	
	// 작성 글 상세 조회 (황명하)
	public QnaVO getQna(int board_no) {
		QnaVO qna = null;
		String sql = "select * from ghkd2676.qna where board_no=?";
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, board_no);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				qna = new QnaVO();
				qna.setBoardNo(rs.getInt("board_no"));
				qna.setProductCode(rs.getInt("product_code"));
				qna.setUserId(rs.getString("user_id"));
				qna.setBoardDate(rs.getTimestamp("board_date"));
				qna.setCategory1(rs.getNString("category1"));
				qna.setCategory2(rs.getString("category2"));
				qna.setQuestion(rs.getNString("question"));
				qna.setImage(rs.getString("image"));
				qna.setAnswer(rs.getString("answer"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}

		return qna;
	}
	
	// 1:1 게시판 글 작성 구현 (황명하)
	public void enrollQna(QnaVO qnaVO, String session_id) {
		Connection conn = null;
		CallableStatement cstmt = null;
		
		try {
			conn = DBManager.getConnection();
            cstmt = conn.prepareCall("{call enrollQuestion(?,?,?,?,?,?)}");
            cstmt.setInt(1, qnaVO.getProductCode());
            cstmt.setString(2, session_id);
            cstmt.setString(3, qnaVO.getCategory1());
            cstmt.setString(4, qnaVO.getCategory2());
            cstmt.setString(5, qnaVO.getQuestion());
            cstmt.setString(6, qnaVO.getImage());
            
            cstmt.execute();
            
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, cstmt);
		}
		
	}
		
	
}
