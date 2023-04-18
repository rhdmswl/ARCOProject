package com.member.vo;

import java.util.Date;

import lombok.Builder;
import lombok.Data;

@Data
public class ReplyVO {
	
	  private Long com_id;
	  private Long post_id;

	  private String com_content;
	  private String com_writer;
	  private Date com_date;
	  
}