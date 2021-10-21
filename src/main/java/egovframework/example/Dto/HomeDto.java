package egovframework.example.Dto;

public class HomeDto {
	
	private String v_url;
	
	public HomeDto() {
	}

	public String getV_url() {
		return v_url;
	}

	public void setV_url(String v_url) {
		this.v_url = v_url;
	}

	@Override
	public String toString() {
		return "HomeDto [v_url=" + v_url + "]";
	}

	public HomeDto(String v_url) {
		super();
		this.v_url = v_url;
	}
	
}
