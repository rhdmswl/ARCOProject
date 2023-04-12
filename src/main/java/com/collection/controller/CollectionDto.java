package com.collection.controller;

import java.util.Date;

public class CollectionDto {
	
	private int seq;
	private String title;
	private Date startDate;
	private Date endDate;
	private String place;
	private String realmName;
	private int price;
	private String url;
	private String phone;
	private Double gpsX;
	private Double gpsY;
	private String imgUrl;
	private String placeAddr;
	private String sido;
	private String thumbnail;
	
	public CollectionDto() {
		super();
	}
	
	public CollectionDto(int seq, String title, Date startDate, Date endDate, String place, String realName, 
			int price, String url, String phone, Double gpsX, Double gpsY, String imgUrl, 
			String placeAddr, String sido, String thumbnail) {
		super();
		this.seq =  seq;
		this.title = title;
		this.startDate = startDate;
		this.endDate = endDate;
		this.place = place;
		this.realmName = realmName;
		this.price = price;
		this.url = url;
		this.phone = phone;
		this.gpsX = gpsX;
		this.gpsY = gpsY;
		this.imgUrl = imgUrl;
		this.placeAddr = placeAddr;
		this.sido = sido;
		this.thumbnail = thumbnail;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getRealmName() {
		return realmName;
	}

	public void setRealmName(String realmName) {
		this.realmName = realmName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public float getGpsX() {
		return gpsX;
	}

	public void setGpsX(float gpsX) {
		this.gpsX = gpsX;
	}

	public float getGpsY() {
		return gpsY;
	}

	public void setGpsY(float gpsY) {
		this.gpsY = gpsY;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getPlaceAddr() {
		return placeAddr;
	}

	public void setPlaceAddr(String placeAddr) {
		this.placeAddr = placeAddr;
	}

	public String getSido() {
		return sido;
	}

	public void setSido(String sido) {
		this.sido = sido;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	
	
}
