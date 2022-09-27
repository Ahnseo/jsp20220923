package jsp20220923.chap07;

public class Car {
	private String model;
	private Integer price;
	
	//생성자 정의하지않으면, 자동적으로 됨 ㅇㅋ.
	public Car() {
		
	}
	
	// 읽을 수 있는 model 프로퍼티 결정
	public String getModel() {
		return model;
	}
	
	// 읽을 수 있는 price 프로퍼티 결정
	public Integer getPrice() {
		return price;
	}
	
	// 쓸 수 있는 model 프로퍼티 결정
	public void setModel(String model) {
		this.model = model;
	}
	
	// 쓸 수 있는 price 프로퍼티 결정
	public void setPrice(Integer price) {
		this.price = price;
	}
	
	// 읽을 수 있는 company 프로퍼티 결정, 
	// 필드값이 없어도, 메소드에 의해 프로퍼티 생성됨..아 .. 그럴수도 있구나~정도.
	public String getCompany() {
		return "현대";
	}
	
	
}
