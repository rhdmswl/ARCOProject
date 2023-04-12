package com.collection.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CollectionVO {
	private long seq;
	private String title;
	private String startDate;
	private String endDate;
	private String place;
	private String realmName;
	private int price;
	private String url;
	private String phone;
	private double gpsX;
	private double gpsY;
	private String imgUrl;
	private String placeAddr;
	private String sido;
	private String thumbnail;
}
