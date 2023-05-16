package com.app.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.pojos.Appliedstudents;
import com.app.pojos.CreateDrive;
import com.app.pojos.Notice;
import com.app.pojos.Selected;
import com.app.pojos.Tpo;
import com.app.pojos.User;

@Repository
public class TpoDao implements TpoDaoInterface {
	@Autowired 
	private EntityManager mgr;

	@Override
	public String registerTpo(Tpo tpo) {
		// TODO Auto-generated method stub
		mgr.persist(tpo);
		return "User registration is done!!!";
	}

	
	@Override
	public String saveTpodriveDetails(Tpo tpo, CreateDrive cd) {
		// TODO Auto-generated method stub
		Tpo t=mgr.find(Tpo.class, tpo.getId());
		CreateDrive c=cd;
		c.setTpo_id(t);
		mgr.persist(c);
		return "Drive Details Saved !!";
		
	}

	@Override
	public List<CreateDrive> fetchAllDrive() {
		// TODO Auto-generated method stub
		
		return mgr.createQuery("select c from CreateDrive c", CreateDrive.class).getResultList();
	}

	@Override
	public CreateDrive fetchCompanyById(int cid) {
		// TODO Auto-generated method stub
		return mgr.find(CreateDrive.class, cid);
	}

	@Override
	public String deletedrive(int cid) {
		// TODO Auto-generated method stub
		CreateDrive cd=mgr.find(CreateDrive.class,cid);
		mgr.remove(cd);
		return "Company removed" ;
	}


	@Override
	public String savenotice(Notice n) {
		// TODO Auto-generated method stub
		mgr.persist(n);
		return "Notice saved Successfully!!";
	}


	@Override
	public List<Notice> fetchAllnotice() {
		// TODO Auto-generated method stub
		return mgr.createQuery("select c from Notice c", Notice.class).getResultList();
		
	}


	

	@Override
	public List<Selected> fetchAllSelected() {
		// TODO Auto-generated method stub
		return mgr.createQuery("select c from Selected c", Selected.class).getResultList();
		
	}


	@Override
	public String saveselected(CreateDrive cd, Selected sd) {
		// TODO Auto-generated method stub
		Selected s=new Selected();
		s.setCid(cd);
		s.setName(sd.getName());
		s.setEmail(sd.getEmail());
		mgr.persist(s);
		
		return "Selected Save Successfully!!";
	}

}
