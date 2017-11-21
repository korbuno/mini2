package com.omp.repository.domain;

public class Class {

    private Integer classNo;

    private String classTitle;

    private String classRegDate;

    public Integer getClassNo() {
        return classNo;
    }

    public void setClassNo(Integer classNo) {
        this.classNo = classNo;
    }

    public String getClassTitle() {
        return classTitle;
    }

    public void setClassTitle(String classTitle) {
        this.classTitle = classTitle;
    }

    public String getClassRegDate() {
        return classRegDate;
    }

    public void setClassRegDate(String classRegDate) {
        this.classRegDate = classRegDate;
    }

    // Class 모델 복사
    public void CopyData(Class param)
    {
        this.classNo = param.getClassNo();
        this.classTitle = param.getClassTitle();
        this.classRegDate = param.getClassRegDate();
    }
}
