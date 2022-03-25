package com.theflyy.demo;

class Teacher{
    String teacherID;
    String teacherName;
    String subject;
    int basicSalary;
    int extraSalary;
    int expYears;
    Teacher(String tID, String tName,String tSub, int eY){
        teacherID = tID;
        teacherName = tName;
        subject = tSub;
        basicSalary = 10000;
        extraSalary = 10;
        expYears = eY;
    }

    public void totSalary(){
        if(expYears>=20){
            extraSalary = 40;
        }else if(expYears>=15){
            extraSalary = 30;
        }else if(expYears>=10){
            extraSalary = 20;
        }else{
            extraSalary = 10;
        }
        int extraSalaryCount = basicSalary * extraSalary / 100;
        int totolSalary = basicSalary + (Integer) extraSalaryCount;
        System.out.println(teacherName  + " Total Salary is :"+totolSalary);
    }
}
public class TeacherInfo {
    public static void main(String args[]){
        Teacher john = new Teacher("12233","John","Math",20);
        Teacher sakshi = new Teacher("12237","Sakshi","Physics",15);
        Teacher pardeep = new Teacher("12233","Pardeep","Java",10);
        Teacher alan = new Teacher("12233","alan","Java",5);
        john.totSalary();
        sakshi.totSalary();
        pardeep.totSalary();
        alan.totSalary();
    }
}
