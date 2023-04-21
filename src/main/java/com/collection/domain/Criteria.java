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
	private long revSeq;
	private int amount;
	
	private String type;
	private String keyword;
	
	public Criteria() {
		this(1, 12);
	}
	
//	public Criteria(int pageNum, int pageNumForLimit) {
//		this.pageNum=pageNum;
//		this.pageNumForLimit = pageNumForLimit;
//	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.pageNumForLimit=((pageNum-1)*12);
	}
	
//	public void setpageNumForLimit() {
//		this.pageNumForLimit=((pageNum-1)*12);
//	}
	
	public String[] getTypeArr() {
		
		return type == null ? new String[] {} : type.split("");
	}
	
}
