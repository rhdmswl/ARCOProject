package com.member.vo;

public class Criteria {

    private int page;
    private int perPageNum;
    private String userId;
    
    private int mypage_id;

    public Criteria() {
        this.page = 1;
        this.perPageNum = 12;
    }
    
    public Criteria(int page) {
        this.page = page;
        this.perPageNum = 12;
    }

    public void setPage(int page) {
        if (page <= 0) {
            this.page = 1;
            return;
        }
        this.page = page;
    }

    public void setPerPageNum(int perPageNum) {
        if (perPageNum <= 0 || perPageNum > 100) {
            this.perPageNum = 12;
            return;
        }
        this.perPageNum = perPageNum;
    }

    public int getPage() {
        return page;
    }

    public int getPerPageNum() {
        return perPageNum;
    }
    
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public int getStart() {
        return (this.page - 1) * perPageNum;
    }

    public int getCount() {
        return perPageNum;
    }
    
    public int getMypage_id() {
        return mypage_id;
    }

    public void setMypage_id(int mypage_id) {
        this.mypage_id = mypage_id;
    }
    
}
