package Model;

public class MemberDTO {

	private String id;
	private String pw;
	private String dogimg;
	private String name;
	private String size;
	private String birth;
	private String gender;
	private String neutering;
	private String health;
	private String disease;
	public MemberDTO(String id, String pw, String dogimg, String name, String size, String birth, String gender, String neutering, String health, String disease) {
		super();
		this.id = id;
		this.pw = pw;
		this.dogimg = dogimg;
		this.name = name;
		this.size = size;
		this.birth = birth;
		this.gender = gender;
		this.neutering = neutering;
		this.health = health;
		this.disease = disease;
	}
	public MemberDTO(String id, String pw) {
	      this.id = id;
	      this.pw = pw;
	   }
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getDogimg() {
		return dogimg;
	}
	public void setDogimg(String dogimg) {
		this.dogimg = dogimg;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getNeutering() {
		return neutering;
	}
	public void setNeutering(String neutering) {
		this.neutering = neutering;
	}
	public String getHealth() {
		return health;
	}
	public void setHealth(String health) {
		this.health = health;
	}
	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}

}
