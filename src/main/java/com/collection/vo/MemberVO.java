package com.collection.vo;

import java.util.List;

import lombok.Data;

@Data
public class MemberVO {
	private String userId;
	private String userPass;
	private String userName;
	private String phone;
	private String email;
	// private String profileImg;

	private List<CollectionReviewVO> collectionRevs;
	private List<BoardVO> posts;
	private List<ReplyVO> comments;

}