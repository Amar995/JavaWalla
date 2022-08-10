package com.sec.model;

import java.util.Date;

import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class Countcheck {

	private int count;
	private Date date;
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "Countcheck [count=" + count + ", date=" + date + "]";
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
}
