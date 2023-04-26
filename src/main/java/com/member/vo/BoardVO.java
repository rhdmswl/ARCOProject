package com.member.vo;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	
	private Long post_id;
	private int brd_id;
	private String post_writer;
	private String post_title;
	private String post_content;
	private String user_id;
	private Date post_regdate;
	private int post_com_count;
	private int post_view_count;
	private int post_rec_count;
	
}