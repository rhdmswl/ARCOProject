package com.collection.domain;

import lombok.Data;

@Data
public class CollectionReviewVO {
	
	private int seq;
	private int revSeq;
	private int userIdx;
	private String nickName;
	private String revComment;
	private int revCount;
	private int revStar;
}
