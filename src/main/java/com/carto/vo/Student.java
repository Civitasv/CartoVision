package com.carto.vo;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Student {
    private long id;
    private String name;
    private String studyNum;
    private String qq;
    private String introduction;
    private int dept;



    @Id
    @Column(name = "id")
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Basic
    @Column(name = "dept")
    public int getDept(){
        return dept;
    }

    public void setDept(int dept) {
        this.dept = dept;
    }

    @Basic
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "study_num")
    public String getStudyNum() {
        return studyNum;
    }

    public void setStudyNum(String studyNum) {
        this.studyNum = studyNum;
    }

    @Basic
    @Column(name = "qq")
    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    @Basic
    @Column(name = "introduction")
    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Student student = (Student) o;

        if (id != student.id) return false;
        if (name != null ? !name.equals(student.name) : student.name != null) return false;
        if (studyNum != null ? !studyNum.equals(student.studyNum) : student.studyNum != null) return false;
        if (qq != null ? !qq.equals(student.qq) : student.qq != null) return false;
        if (introduction != null ? !introduction.equals(student.introduction) : student.introduction != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (studyNum != null ? studyNum.hashCode() : 0);
        result = 31 * result + (qq != null ? qq.hashCode() : 0);
        result = 31 * result + (introduction != null ? introduction.hashCode() : 0);
        return result;
    }
}
