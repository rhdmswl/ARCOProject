package com.arco.domain;

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
	
	private int brd_id;

	public Criteria() {
		this(1, 10);
	}
	
	public Criteria(int pageNum, int pageNumForLimit) {
		this.pageNum=pageNum;
		this.pageNumForLimit = pageNumForLimit;
	}
	
	public void setpageNumForLimit() {
		this.pageNumForLimit=((pageNum-1)*10);
	}
	
	public String[] getTypeArr() {
		return type == null ? new String[] {} : type.split("");
	}
}
