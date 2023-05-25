package test.guest.dto;


/*
 * 
 * Dto의 필드 선언하기 
 * - 필드의 type과 필드명 정하기
 * - 테이블당 dto가 하나일까 ? -> 정확한것 주제별당 하나라고 생각하면 됨 
 * 만약에 테이블 join을 하게 되면 ,,,,,
 * 
 * - 테이블 만들때 date로 만든다고 해도 타입을 string으로 해야함 
 */

public class GuestDto {
	private int num;
	private String writer;
	private String content;
	private String pwd;
	private String regdate;
	
	//디폴트 생성자는 꼭 ~!!! 있어야함 ~!!!
	public GuestDto () {}


	public int getNum() {
		return num;
	}


	public void setNum(int num) {
		this.num = num;
	}


	public String getWriter() {
		return writer;
	}


	public void setWriter(String writer) {
		this.writer = writer;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	public String getRegdate() {
		return regdate;
	}


	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}


	public GuestDto(int num, String writer, String content, String pwd, String regdate) {
		super();
		this.num = num;
		this.writer = writer;
		this.content = content;
		this.pwd = pwd;
		this.regdate = regdate;
	}


	
}
