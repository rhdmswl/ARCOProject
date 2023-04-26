package com.member.vo;

import lombok.Data;

@Data
public class CalendarVO {
	private long seq;
	private String title;
	private String startDate;
	private String endDate;
	private String userId;
	private String imgUrl;
}
