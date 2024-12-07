package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.klef.jfsd.springboot.model.Educator;

@Repository
public interface EducatorRepository extends JpaRepository<Educator, Integer> {

	@Query("select e from Educator e where e.email=?1 and e.password=?2 ")
	public Educator checkedulogin(String email, String pwd);
	
	@Query("update Educator e set e.status=?1 where e.id=?2")
	@Modifying //D
	@Transactional //acommit
	public int updateedustatus(String status,int eid);

	@Query("delete from Student s where s.id=?1")
	@Modifying //D
	@Transactional //acommit
	public int deletestubyid(int sid);
	
	//no need to write quesries explicitly 
	//public List<Educator> findByDepartment(String department);
}
