package com.sec.model;

import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class Jobs {
	private String name;
	private String com;

	@Override
	public String toString() {
		return "ItJob [name=" + name + ", com=" + com + "]";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCom() {
		return com;
	}

	public void setCom(String com) {
		this.com = com;
	}
}
