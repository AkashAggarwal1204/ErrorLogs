package com.ErrorLogs.ErrorLogs.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.validation.constraints.Size;



@Entity
@Table
public class Ques_Ans {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private long id;
	
	@Lob
	@Column(name = "question" ,nullable = false)
	private String Question;
	
	@Column(name = "Answers",nullable = false)
	private List<String> Answers;
	
	
	@Column(name = "Time")
	private Date ModifyTime;
	
	
	
	

}
