package com.collection.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CollectionVO {
	private int seq;
	private String title;
	private Date startDate;
	private Date endDate;
	private String place;
	private String realmName;
	private int price;
	private String url;
	private String phone;
	private float gpsX;
	private float gpsY;
	private String imgUrl;
	private String placeAddr;
	private String sido;
	private String thumbnail;
}
