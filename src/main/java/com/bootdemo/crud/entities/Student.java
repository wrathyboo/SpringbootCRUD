package com.bootdemo.crud.entities;

import java.sql.Timestamp;
import java.util.Date;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@EntityListeners(AuditingEntityListener.class)
@Table(name = "students")
public class Student {
	@Id
	@Column(name = "stu_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer stuId;

	@Getter @Setter
	@Column(name = "full_name")
	private String fullName;

	@Getter @Setter
	@Column(name = "gender")
	private Boolean gender;

	@Getter @Setter
	@Column(name = "birthday")
	private Date birthday;

	@Getter @Setter
	@Column(name = "address")
	private String address;

	@Getter @Setter
	@Column(name = "class_name")
	private String className;

	@LastModifiedDate
	@Column(name = "updated_at")
	private Timestamp updatedAt;

	@CreatedDate
	@Column(name = "created_at", updatable = false)
	private Timestamp createdAt;
	

}
