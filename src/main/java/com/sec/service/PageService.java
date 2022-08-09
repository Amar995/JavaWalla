package com.sec.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Service;

import com.sec.model.LatestJobs;
import com.sec.model.MockTestHTMLPage;
@Service
public class PageService {

	@Autowired
	MongoTemplate mon;
	
	public List<MockTestHTMLPage> getData(String name)
	{
		Query query = new Query();
		query.addCriteria(Criteria.where("name").is(name));
		query.with(Sort.by(Sort.Order.desc("_id")));
		query.with(Pageable.ofSize(1));
		List<MockTestHTMLPage> page = mon.find(query,MockTestHTMLPage.class);
		return page;
	}
	
	public List<LatestJobs> getJobData()
	{
		Query query = new Query();
		query.with(Sort.by(Sort.Order.desc("_id")));
		query.with(Pageable.ofSize(1));
		List<LatestJobs> page = mon.find(query,LatestJobs.class);
		return page;
	}
	
}
