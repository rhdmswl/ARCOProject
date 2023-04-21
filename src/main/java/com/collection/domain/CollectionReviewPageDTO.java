package com.collection.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

@Data
@AllArgsConstructor
@Getter
public class CollectionReviewPageDTO {
	private int reviewCnt;
	private List<CollectionReviewVO> list;

}
