package com.member.service;

import java.util.Random;

import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import com.member.vo.MemberVO;

@Component
public class FindPwMailSendService {
	
	@Autowired
	private JavaMailSenderImpl mailSender;
	
	@Autowired
	BCryptPasswordEncoder pwdEncoder;
	
	@Inject
	MemberService service;
	
	private String authNumber; 
	
	// 난수 발생
	public void makeRandomNumber() {
	    String chars = "abcdefghijklmnopqrstuvwxyz0123456789"; // 사용할 문자 및 숫자 정의
	    StringBuilder sb = new StringBuilder();
	    Random r = new Random();
	    int length = 6; // 난수의 길이
	    for (int i = 0; i < length; i++) {
	        int index = r.nextInt(chars.length()); // 랜덤 인덱스 생성
	        sb.append(chars.charAt(index)); // 랜덤 인덱스로 문자나 숫자 선택하여 StringBuilder에 추가
	    }
	    String checkNum = sb.toString();
	    System.out.println("인증번호 : " + checkNum);
	    authNumber = checkNum;
	}
	
	// 이메일 보낼 양식
	public String findPwEmail(String userId, String email) throws Exception {
		makeRandomNumber();
		System.out.println(userId);
		System.out.println(email);
		String pwd = pwdEncoder.encode(authNumber);
		System.out.println("newpwd : "+pwd);
		
		MemberVO vo = new MemberVO(userId,pwd,"","",email,"");
		// vo => 기존 아이디 기존 이메일 새로 생긴 pwd
		service.findPwUpdate(vo);
		
		String setFrom = ".com"; // email-context에 설정한 자신의 이메일 주소를 입력 
		String toMail = email;
		String title = "ARCO 임시비밀번호 발급 이메일 입니다."; // 이메일 제목 
		String content = 
			    "<div style='background-color:#FFF5EE; padding:20px;'>" +
			    "<div style='max-width:600px; margin:auto; background-color:#ffffff; padding:20px; border-radius:10px; text-align:center;'>" +
			    "<img src='https://i.imgur.com/evlOrzY.png' alt='ARCO' style='max-width:30%;'>" +
			    "<h2 style='color:#f21378;'>ARCO 임시비밀번호 발급 이메일 입니다.</h2>" +
			    "<p>ARCO 홈페이지를 방문해주셔서 감사합니다.</p>" +
			    "<p>인증 번호는 <strong style='color:#f21378; font-size:18px;'>" + authNumber + "</strong>입니다.</p>" +
			    "<p>임시비밀번호를 입력하여 다시 로그인해주세요.</p>" +
			    "<hr style='border-top: 0.05px solid #e9e9e9; margin: 20px 0;'>" +
			    "<p style='text-align:center; font-size:15px; color:#888;'>본 메일은 발신 전용입니다.</p>" +
			    "</div>" +
			    "</div>";

		mailSend(setFrom, toMail, title, content);
		return authNumber;
	}
	
	// 이메일 전송 메소드
	public void mailSend(String setFrom, String toMail, String title, String content) { 
		MimeMessage message = mailSender.createMimeMessage();
		// true 매개값을 전달하면 multipart 형식의 메세지 전달이 가능. 문자 인코딩 설정도 가능.
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message,true,"utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			// true 전달 > html 형식으로 전송 , 작성하지 않으면 단순 텍스트로 전달.
			helper.setText(content,true);
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

}
