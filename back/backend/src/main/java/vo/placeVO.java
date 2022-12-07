package vo;

public class placeVO {
	private String place_number;
	private String place_name;
	private String place_address;
	private String latitude;
	private String lonngitude;
	private String place_facilities;

	public placeVO() {
		super();
	}

	public String getPlace_number() {
		return place_number;
	}

	public void setPlace_number(String place_number) {
		this.place_number = place_number;
	}

	public String getPlace_name() {
		return place_name;
	}

	public void setPlace_name(String place_name) {
		this.place_name = place_name;
	}

	public String getPlace_address() {
		return place_address;
	}

	public void setPlace_address(String place_address) {
		this.place_address = place_address;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLonngitude() {
		return lonngitude;
	}

	public void setLonngitude(String lonngitude) {
		this.lonngitude = lonngitude;
	}

	public String getPlace_facilities() {
		return place_facilities;
	}

	public void setPlace_facilities(String place_facilities) {
		this.place_facilities = place_facilities;
	}

}
