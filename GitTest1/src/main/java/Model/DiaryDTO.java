package Model;

import java.util.Date;

public class DiaryDTO {
	private String title;
	private String content;
	private String name;
	private int num;
	private String date;
	
	public DiaryDTO(String title, String content) {
		super();
		this.title = title;
		this.content = content;
		
	}
	
	public DiaryDTO(int num, String title, String name, String date) {
		
		this.num = num;
		this.title = title;
		this.name = name;
		this.date = date;
		
	}

	

	public String getTitile() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getName() {
		return name;
	}

	public void setId(String name) {
		this.name = name;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

}
		
	
	
