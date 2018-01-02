package pojoFiles;

public class BookBean {

	private String code;
	private String name;
	private String category;
	private String author;
	private int copiesInLibrary;
	private int availableCopies;
	private String image;

	public String getCode() {
		return code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public int getCopiesInLibrary() {
		return copiesInLibrary;
	}

	public void setCopiesInLibrary(int copiesInLibrary) {
		this.copiesInLibrary = copiesInLibrary;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getAvailableCopies() {
		return availableCopies;
	}

	public void setAvailableCopies(int availableCopies) {
		this.availableCopies = availableCopies;
	}

}
