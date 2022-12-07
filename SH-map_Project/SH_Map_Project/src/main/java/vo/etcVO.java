package vo;

public class etcVO {
	/* 즐겨찾기 */
	private String favorites_user_id;
	private String favorites_place_number;
	/* 추천 */
	private String suggestion_user_id;
	private String suggestion_place_number;

	public etcVO() {
		super();
	}

	/* 즐겨찾기 table */
	public String getFavorites_user_id() {
		return favorites_user_id;
	}

	public void setFavorites_user_id(String favorites_user_id) {
		this.favorites_user_id = favorites_user_id;
	}

	public String getFavorites_place_number() {
		return favorites_place_number;
	}

	public void setFavorites_place_number(String favorites_place_number) {
		this.favorites_place_number = favorites_place_number;
	}

	/* 추천 table */
	public String getSuggestion_user_id() {
		return suggestion_user_id;
	}

	public void setSuggestion_user_id(String suggestion_user_id) {
		this.suggestion_user_id = suggestion_user_id;
	}

	public String getSuggestion_place_number() {
		return suggestion_place_number;
	}

	public void setSuggestion_place_number(String suggestion_place_number) {
		this.suggestion_place_number = suggestion_place_number;
	}
}