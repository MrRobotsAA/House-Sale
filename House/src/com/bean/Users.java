package com.bean;

import org.hibernate.validator.constraints.NotBlank;

public class Users {
   private int uid;
   @NotBlank(message="")
   private String uname;
   @NotBlank(message="")
   private String upass;
   @NotBlank(message="")
   private String usercate;
   @NotBlank(message="")
   private String telephone;
public int getUid() {
	return uid;
}
public void setUid(int uid) {
	this.uid = uid;
}
public String getUname() {
	return uname;
}
public void setUname(String uname) {
	this.uname = uname;
}
public String getUpass() {
	return upass;
}
public void setUpass(String upass) {
	this.upass = upass;
}

public String getUsercate() {
	return usercate;
}
public void setUsercate(String usercate) {
	this.usercate = usercate;
}
public String getTelephone() {
	return telephone;
}
public void setTelephone(String telephone) {
	this.telephone = telephone;
}
   



}
