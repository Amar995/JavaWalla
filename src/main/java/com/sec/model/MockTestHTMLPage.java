package com.sec.model;

import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class MockTestHTMLPage {

	private String page;
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPage() {
		return page;
	}

	

	@Override
	public String toString() {
		return "MockTestHTMLPage [page=" + page + ", name=" + name + "]";
	}

	public void setPage(String page) {
		this.page = page;
	}
}
