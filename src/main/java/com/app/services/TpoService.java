package com.app.services;

import java.util.List;

import javax.transaction.Transactional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.dao.TpoDaoInterface;
import com.app.pojos.Appliedstudents;
import com.app.pojos.CreateDrive;
import com.app.pojos.Notice;
import com.app.pojos.Selected;
import com.app.pojos.Tpo;

@Service
@Transactional
public class TpoService implements TpoServiceInterface {
	 @Autowired 
	  private TpoDaoInterface TpoDao;
	@Override
    public String registerTpo(Tpo tpo) {
		// TODO Auto-generated method stub
		return TpoDao.registerTpo(tpo);
	}
	
	@Override
	public  String saveTpodriveDetails(Tpo tpo, CreateDrive cd) {
		// TODO Auto-generated method stub
		return TpoDao.saveTpodriveDetails(tpo, cd);
	}
    
	@Override
	public  List<CreateDrive> fetchAllDrive() {
		// TODO Auto-generated method stub
		return TpoDao.fetchAllDrive();
	}

	@Override
	public CreateDrive fetchCompanyById(int cid) {
		// TODO Auto-generated method stub
		return TpoDao.fetchCompanyById(cid);
	}

	@Override
	public String deletedrive(int cid) {
		// TODO Auto-generated method stub
		return TpoDao.deletedrive(cid);
	}

	@Override
	public String savenotice(Notice n) {
		// TODO Auto-generated method stub
		return TpoDao.savenotice(n);
	}

	@Override
	public List<Notice> fetchAllnotice() {
		// TODO Auto-generated method stub
		return TpoDao.fetchAllnotice();
	}

	
	@Override
	public List<Selected> fetchAllSelected() {
		// TODO Auto-generated method stub
		return TpoDao.fetchAllSelected();
	}

	@Override
	public String saveselected(CreateDrive cd, Selected sd) {
		// TODO Auto-generated method stub
		return TpoDao.saveselected(cd,sd);
	}

	

	

}
