package com.member.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor 
public class CalendarVO {
	private long seq;
	private String title;
	private String start_date;
	private String end_date;
	private String user_id;
	private String imgUrl;
	private String color;
}

