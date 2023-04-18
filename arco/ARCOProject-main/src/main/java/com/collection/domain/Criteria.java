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
	
	private String type;
	private String keyword;
	
	private long seq;
	private long revSeq;
	
	
	 public Criteria() {
	        this(1,10);
	    }


	 public Criteria(int pageNum, int pageNumForLimit) {
			this.pageNum=pageNum;
			this.pageNumForLimit = pageNumForLimit;
		}
	
}