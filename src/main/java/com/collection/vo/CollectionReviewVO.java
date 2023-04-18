package com.collection.vo;

import lombok.Data;

@Data
public class CollectionReviewVO {
	
	private long seq;
	private long revSeq;
	private String userId;
	private String nickName;
	private String revComment;
	private int revCount;
	private int revStar;
	
}