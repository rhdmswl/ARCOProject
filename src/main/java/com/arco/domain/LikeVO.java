package com.arco.domain;

import lombok.Data;


@Data
public class LikeVO {
	  private String userId; 
	  private Long post_id;
	  private int likechk;
	  
}
