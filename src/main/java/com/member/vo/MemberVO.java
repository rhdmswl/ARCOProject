package com.member.vo;

import java.util.List;

import lombok.Data;

@Data
public class MemberVO {
	private String userId;
	private String userPass;
	private String userName;
	private String phone;
	private String email;
	private String newPass;
	private String confirmPass;
	private String role;

	public MemberVO(String userId,String userPass,String userName,String phone, String email,String role) {
		this.userId = userId;
		this.userPass = userPass;
		this.userName = userName;
		this.phone = phone;
		this.email = email;		
		this.role = role;
	}

	private List<CollectionReviewVO> collectionRevs;
	private List<BoardVO> posts;
	private List<ReplyVO> comments;

}