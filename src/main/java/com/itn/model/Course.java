/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity 
@Table(name="course_table")

public class Course{
  //  private static final long serialVersionUID = 1234567L;
    
   @Id @GeneratedValue(strategy=GenerationType.AUTO)
  // @Column(name="cid")// ----->>  changes name in table as cid 
   private int id;
   @Column(name="title")
   private String title;
   @Column(name="duration")
   private String duration;
   @Column(name="price")
   private String price;

    public Course(int id, String title, String duration, String price) {
        this.id = id;
        this.title = title;
        this.duration = duration;
        this.price = price;
    }

    public Course() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
    
}
