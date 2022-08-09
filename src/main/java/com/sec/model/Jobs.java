package com.sec.model;

import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class Jobs {
	private String name;
	private String company;

	@Override
	public String toString() {
		return "ItJob [name=" + name + ", company=" + company + "]";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getcompany() {
		return company;
	}

	public void setcompany(String company) {
		this.company = company;
	}
}
