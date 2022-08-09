package com.sec.dao;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.sec.model.MockTestHTMLPage;


public interface HtmlInterface extends MongoRepository<MockTestHTMLPage, Integer> {

	public List<MockTestHTMLPage> findByName(String name);
}
