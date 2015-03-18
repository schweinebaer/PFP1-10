package org.pfp110.servlet;

import java.util.Date;


public class JavaBean implements java.io.Serializable{
	
	Date date;
	
	public Date getDate(){
		return date;
	}
	
	public void setDate(Date date){
		this.date=date;
	}
	
	@Override
	public String toString(){
		return"Customer [date="+date+"]";
	}
	
	
}