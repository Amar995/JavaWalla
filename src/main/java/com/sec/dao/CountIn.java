package com.sec.dao;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.sec.model.Countcheck;

public interface CountIn extends MongoRepository<Countcheck,Integer> {

}
