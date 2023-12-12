package Model;

import java.util.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

import Database.DBUtils;

public class Account {
	private int userSeq;
	private String userID;
	private String userPWD;
	private String username;
	private String userEmail;
	private Date created_at;
	private Date login_at;
	
	public Account(int userSeq, String userID, String userPWD, String username, String userEmail, Date created_at, Date login_at) {
		this.userSeq = userSeq;
		this.userID = userID;
		this.userPWD = userPWD;
		this.username = username;
		this.userEmail = userEmail;
		this.created_at = created_at;
		this.login_at = login_at;
	}
	
	public static int login(String userID, String userPWD) throws Exception {
		Connection conn = DBUtils.getConnection();
		Statement stmt = conn.createStatement();
		try{
			ResultSet rs = stmt.executeQuery(String.format("SELECT userPWD FROM account WHERE userID = '%s';", userID));
			if(rs.next()) {
				String queryUserPWD = rs.getString(1);
				if (queryUserPWD.equals(userPWD)) {
					return 200;
				}
				else {
					return 401;
				}
			}
			else {
				return 404;
			}
		} catch (Exception e) {
			throw new Exception("Account.login error occured : ", e);
		} finally {
			stmt.close();
			conn.close();
		}
	}
	
	public static int signup(String userID, String userPWD, String username, String userEmail) throws Exception {
		Connection conn = DBUtils.getConnection();
		Statement stmt = conn.createStatement();
		try {
			ResultSet rs = stmt.executeQuery(String.format("SELECT userID from account WHERE userID = '%s';", userID));
			if (rs.next()) {
				return 409;
			}
			else {
				int resultLine = stmt.executeUpdate(String.format("INSERT INTO account(userID, userPWD, username, userEmail) VALUES ('%s', '%s', '%s', '%s')", userID, userPWD, username, userEmail));
				if (resultLine > 0) {
					return 200;
				}
				else {
					return 401;
				}
			}	
		} catch (Exception e) {
			throw new Exception("Account.signup error occured : ", e);
		} finally {
			stmt.close();
			conn.close();
		}
	}
}
