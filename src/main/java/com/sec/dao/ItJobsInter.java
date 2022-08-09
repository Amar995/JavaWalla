package com.sec.dao;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.sec.model.Jobs;

@Repository
public interface ItJobsInter extends MongoRepository<Jobs, Integer> {

}
