package com.member.vo;

public class Criteria {

    private int page;
    private int perPageNum;
    private String userName;

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
    
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getStart() {
        return (this.page - 1) * perPageNum;
    }

    public int getCount() {
        return perPageNum;
    }
}
