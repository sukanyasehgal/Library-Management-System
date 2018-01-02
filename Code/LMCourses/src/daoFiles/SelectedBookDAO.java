package daoFiles;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import pojoFiles.BookBean;
import configuration.ConnectionManager;

public class SelectedBookDAO {

	public BookBean getBookAttributes(String selectedCourseCode) {

		PreparedStatement preparedStatement = null;
		ResultSet result = null;
		Connection connection = null;

		BookBean book = new BookBean();
		try {
			connection = ConnectionManager.getConnection();

			preparedStatement = connection
					.prepareStatement("select * from books where code = ?");
			preparedStatement.setString(1, selectedCourseCode);
			result = preparedStatement.executeQuery();
			while (result.next()) {
				String code = result.getString(1);
				String name = result.getString(2);
				String category = result.getString(3);
				String author = result.getString(4);
				int copiesInLibrary = result.getInt(5);
				int availableCopies = result.getInt(6);
				String image = result.getString(7);
				book.setCode(code);
				book.setCategory(category);
				book.setName(name);
				book.setAuthor(author);
				book.setCopiesInLibrary(copiesInLibrary);
				book.setAvailableCopies(availableCopies);
				book.setImage(image);
				
			}
			preparedStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
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

		return book;
	}
}
