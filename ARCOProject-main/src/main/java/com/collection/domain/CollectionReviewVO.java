package com.collection.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CollectionReviewVO {
	
	private long seq;
	private long revSeq;
	private long userIdx;
	
	private String nickName;
	private String revComment;
	private int revCount;
	private int revStar;
	private Date replyDate;
	private Date updateDate;
	
}
