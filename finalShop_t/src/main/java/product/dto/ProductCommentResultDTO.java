package product.dto;

public class ProductCommentResultDTO {
	int num;
	String content;
	String count;
	public ProductCommentResultDTO(){
		
	}
	public ProductCommentResultDTO(int num, String content, String count) {
		super();
		this.num = num;
		this.content = content;
		this.count = count;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	
}
