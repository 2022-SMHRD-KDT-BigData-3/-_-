package Model;

public class DogFoodDTO {
	private String fdNum;
	private String fdCom;
	private String fdName;
	private String material;
	private String imgUrl;
	private String ingredient;
	public DogFoodDTO(String fdNum, String fdCom, String fdName, String material, String imgUrl, String ingredient) {
		super();
		this.fdNum = fdNum;
		this.fdCom = fdCom;
		this.fdName = fdName;
		this.material = material;
		this.imgUrl = imgUrl;
		this.ingredient = ingredient;
	}
	public String getFdNum() {
		return fdNum;
	}
	public void setFdNum(String fdNum) {
		this.fdNum = fdNum;
	}
	public String getFdCom() {
		return fdCom;
	}
	public void setFdCom(String fdCom) {
		this.fdCom = fdCom;
	}
	public String getFdName() {
		return fdName;
	}
	public void setFdName(String fdName) {
		this.fdName = fdName;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	public String getIngredient() {
		return ingredient;
	}
	public void setIngredient(String ingredient) {
		this.ingredient = ingredient;
	}
	
	
}
