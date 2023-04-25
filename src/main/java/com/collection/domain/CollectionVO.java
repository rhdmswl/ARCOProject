package com.collection.domain;

import lombok.Data;

@Data
public class CollectionVO {
	private long seq;
	private String title;
	private String startDate;
	private String endDate;
	private String place;
	private String realmName;
	private String price;
	private String url;
	private String phone;
	private double gpsX;
	private double gpsY;
	private String imgUrl;
	private String placeAddr;
	private String area;
	private String thumbnail;
	private long revViewCount;
	
	private Long post_id;
	private String post_title;
	private int brd_id;
}
