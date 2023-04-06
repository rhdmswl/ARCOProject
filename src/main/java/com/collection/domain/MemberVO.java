package com.collection.domain;

import lombok.Data;

@Data
public class MemberVO {

    private Long memberIdx;
    private String memberId;
    private String password; 
    private String passwordCheck; 
    private String nickname;
    private String email;
    private String phone;
    
}
