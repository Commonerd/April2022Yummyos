package app.yummyos.store.dto;

import lombok.Data;

@Data
public class StoreDto {
		private int no;
		private String name;
		private String category;
		private String address;
		private String phone;
		private double map_lt;
		private double map_ln;
		private String menu;
		private String detail;
		private int view_count;
		private String hashtag;

		private int blike;

	}

