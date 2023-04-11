package com.arco.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter 
@ToString
public class Criteria {
	private int pageNum;
	
	public Criteria() {
		this(2);
	}
	
	public Criteria(int pageNum) {
		this.pageNum=((pageNum-1)*10);
	}
	
	public int getpageNum() {
		return (this.pageNum-1)*10;
	}

}
