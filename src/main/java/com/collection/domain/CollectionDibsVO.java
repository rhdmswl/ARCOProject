package com.collection.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CollectionDibsVO {
	
	private long seq;
	private String title;
	private String startDate;
	private String endDate;
	private String userId;
	private String imgUrl;

}
