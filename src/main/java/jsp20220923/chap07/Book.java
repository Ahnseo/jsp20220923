package jsp20220923.chap07;

public class Book {
	//필드
	private String title;
	private Integer price;
	
	//전체 필드를 초기화하는 생성자 
	public Book(String title, Integer price) {
		super();
		this.title = title;
		this.price = price;
	}

	//get,set메소드
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}
	
	
}
