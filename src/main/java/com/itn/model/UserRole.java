/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="User_Role")
public class UserRole implements Serializable{
    private static final long serialVersionUID=985477L;
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;
    private int uid;
    private String authority;

    public UserRole() {
    }

    public UserRole(int id, int uid, String authority) {
        this.id = id;
        this.uid = uid;
        this.authority = authority;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }
    
}
