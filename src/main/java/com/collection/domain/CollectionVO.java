package com.collection.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CollectionVO {
	private long seq;
	private String title;
	private Date startDate;
	private Date endDate;
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
	private double starAvg;
}
