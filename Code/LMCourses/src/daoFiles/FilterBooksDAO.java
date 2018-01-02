package daoFiles;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import configuration.ConnectionManager;
import pojoFiles.BookBean;

public class FilterBooksDAO {

	public List<BookBean> getSelectedBooks(
			String[] selectedBookCategories) {

		PreparedStatement preparedStatement = null;
		ResultSet result = null;
		Connection connection = null;

		List<BookBean> listOfSelectedBooks = new ArrayList<>();
		try {
			connection = ConnectionManager.getConnection();
			for (String categorySelected : selectedBookCategories) {

				preparedStatement = connection
						.prepareStatement("select * from books where category = ?");
				//System.out.println(categorySelected);
				preparedStatement.setString(1, categorySelected);
				result = preparedStatement.executeQuery();
				while (result.next()) {
					BookBean book = new BookBean();
					String code = result.getString(1);
					String name = result.getString(2);
					String category = result.getString(3);
					String author = result.getString(4);
					int copiesInLibrary = result.getInt(5);
					int availableCopies = result.getInt(6);
					String image = result.getString(7);
					book.setCode(code);
					book.setName(name);
					book.setCategory(category);
					book.setAuthor(author);
					book.setCopiesInLibrary(copiesInLibrary);
					book.setAvailableCopies(availableCopies);
					book.setImage(image);
					listOfSelectedBooks.add(book);
				}
				preparedStatement.close();

			}
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

		return listOfSelectedBooks;
	}
}
