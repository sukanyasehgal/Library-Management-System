package daoFiles;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import configuration.ConnectionManager;
import pojoFiles.BookBean;
import pojoFiles.UserBean;

public class BookIssueDAO {

	public void registerUser(UserBean userBean, BookBean bookBean) {

		PreparedStatement preparedStatement = null;
		ResultSet result = null;
		Connection connection = null;

		try {
			connection = ConnectionManager.getConnection();
			preparedStatement = connection
					.prepareStatement("select * from books where book_code = ?");
			preparedStatement.setString(1, bookBean.getCode());
			result = preparedStatement.executeQuery();
			boolean available = false;
			boolean issueLimitReached = true;
			while (result.next()) {
				int availableCopies = result.getInt(6);
				if (availableCopies > 0) {
					available = true;
				}
			}
			if (available == true) {
				preparedStatement = connection
						.prepareStatement("select * from employees where employee_id = ?");
				preparedStatement.setInt(1, userBean.getEmployeeId());
				result = preparedStatement.executeQuery();

				while (result.next()) {
					int numberOfBooksIssued = result.getInt(5);
					if (numberOfBooksIssued < 2) {
						issueLimitReached = false;
					}
				}
			}
			if (issueLimitReached == false) {
				preparedStatement = connection
						.prepareStatement("select * from employees where (book_code = ? and employee_id = ?)");
				preparedStatement.setString(1, bookBean.getCode());
				preparedStatement.setInt(2, userBean.getEmployeeId());
				boolean exists = result.next();
				if (!exists) {
					preparedStatement = connection
							.prepareStatement("insert into books_issued values(_code, employee_id, employee_name, employee_phone_number, email_id) values(?,?,?,?,?);");
					preparedStatement.setString(1, bookBean.getCode());
					preparedStatement.setInt(2, userBean.getEmployeeId());
					preparedStatement.setString(3, userBean.getName());
					preparedStatement.setLong(4, userBean.getPhoneNumber());
					preparedStatement.setString(5, userBean.getEmail());
					preparedStatement.executeUpdate();
					preparedStatement.close();

				}
			}
		}

		catch (SQLException e) {

			e.printStackTrace();
		}

		finally {
			// start finally block

			try {

				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}// end finally block
			// return false;
	}
}
