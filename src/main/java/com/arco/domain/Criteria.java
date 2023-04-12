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
	
	public Criteria() {
		this(1);
	}
	
	public Criteria(int pageNum) {
		this.pageNum=pageNum;
	}
	
	public void setpageNumForLimit() {
		this.pageNumForLimit=((pageNum-1)*10);
	}
}

