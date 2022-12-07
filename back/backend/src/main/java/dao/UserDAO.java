package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.JDBCUtil;
import vo.UserVO;

public class UserDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql;

	public UserVO login(String id) {
		UserVO vo = null;

		sql = "select * from user_tbl_map where user_id = ?";

		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				vo = new UserVO();
				vo.setUser_id(rs.getString("user_id"));
				vo.setUser_Phone_number(rs.getString("user_profile"));
				vo.setUser_password(rs.getString("user_password"));
				vo.setUser_Phone_number(rs.getString("user_Phone_number"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return vo;
	}
}