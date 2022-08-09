package com.sec.model;

import java.sql.Date;

import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class LatestJobs {

	
	private String name;
	@Override
	public String toString() {
		return "LatestJobs [name=" + name + ", date=" + date + "]";
	}
	private Date date;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}

	
}
