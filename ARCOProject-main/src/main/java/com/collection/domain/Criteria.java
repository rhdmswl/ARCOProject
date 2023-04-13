package com.collection.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {

	private int pageNum;
	private int pageNumForLimit;
	private long seq;
	private int revSeq;
	
	
	public Criteria() {
		this(1);
	}


	public Criteria(int pageNum) {
		this.pageNum = pageNum;
	}
	
	public void setPageNumForLimit() {
		this.pageNumForLimit = ((pageNum - 1)*10);
	}
	
}
