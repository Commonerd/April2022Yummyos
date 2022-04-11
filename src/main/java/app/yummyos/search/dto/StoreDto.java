package app.yummyos.search.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class StoreDto {
	
	private int no;			// 식당 번호(고유값)
	private String Name;		// 식당 이름
	private String Category;	// 식당 카테고리
	private String address;		// 식당 주소
	
	
	@Override
	public String toString() {
		return "StoreDto [no=" + no + ", Name=" + Name + ", Category=" + Category + ", address=" + address + "]";
	}
	

}
