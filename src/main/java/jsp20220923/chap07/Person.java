package jsp20220923.chap07;

public class Person {
	//읽고 쓸수있는 name age 프로퍼티 작성하기
	
	private String name;
	private Integer age;
	private boolean alive;
	/*
	 * jsp에서 class 파일은 생성자는 필드에 의해 자동으로 만들어줌
	public Person(String name, Integer age) {
		this.name = name;
		this.age = age;
	}
	 **/
	//boolean 타입은 is뭐뭐() 
	public boolean isAlive() {
		return alive;
	}
	
	public String getName() {
		return name;
	}
	public Integer getAge() {
		return age;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
}
