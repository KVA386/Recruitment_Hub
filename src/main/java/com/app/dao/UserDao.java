package com.app.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.pojos.AchivementsDetails;
import com.app.pojos.Appliedstudents;
import com.app.pojos.CreateDrive;
import com.app.pojos.EducationalDetails;
import com.app.pojos.Pendingapplication;
import com.app.pojos.PersonalDetails;
import com.app.pojos.ProjectDetails;
import com.app.pojos.SkillDetails;
import com.app.pojos.User;

@Repository
public class UserDao implements UserDaoInterface {

	@Autowired
	private EntityManager mgr;

	@Override
	public String savePersonalDetails(User user, PersonalDetails pd) {
		User u=mgr.find(User.class, user.getId());
		u.getPersonal_details().setAddress(pd.getAddress());
		u.getPersonal_details().setEmail(pd.getEmail());
		u.getPersonal_details().setGithub(pd.getGithub());
		u.getPersonal_details().setLinkedin(pd.getLinkedin());
		u.getPersonal_details().setName(pd.getName());
		u.getPersonal_details().setObjective(pd.getObjective());
		u.getPersonal_details().setPhone(pd.getPhone());
		u.getPersonal_details().setUser_id(user);
		return "Personal Details Saved !!";
	}
	@Override
	public String saveEducationalDetails(User user, EducationalDetails ed) {
		User u=mgr.find(User.class, user.getId());
		u.getEducational_details().setDegree(ed.getDegree());
		u.getEducational_details().setCollege1(ed.getCollege1());
		u.getEducational_details().setCgpa1(ed.getCgpa1());
		u.getEducational_details().setYear1(ed.getYear1());
		u.getEducational_details().setCourse1(ed.getCourse1());
		u.getEducational_details().setCollege2(ed.getCollege2());
		u.getEducational_details().setMarks1(ed.getMarks1());
		u.getEducational_details().setYear2(ed.getYear2());
		u.getEducational_details().setCourse2(ed.getCourse2());
		u.getEducational_details().setSchool(ed.getSchool());
		u.getEducational_details().setMarks2(ed.getMarks2());
		u.getEducational_details().setYear3(ed.getYear3());

		u.getEducational_details().setUser_id(user);
		return "Educational Details Saved !!";
	}
	@Override
	public String saveSkillDetails(User user, SkillDetails sd) {
		User u=mgr.find(User.class, user.getId());
		u.getSkill_details().setSs(sd.getSs());
		u.getSkill_details().setIt(sd.getIt());
		u.getSkill_details().setPrg(sd.getPrg());
		u.getSkill_details().setWt(sd.getWt());
		u.getSkill_details().setUser_id(user);
		return "Skill Details Saved !!";
	}
	@Override
	public String saveProjectDetails(User user, ProjectDetails rd) {
		User u=mgr.find(User.class, user.getId());
		u.getProject_details().setTitle1(rd.getTitle1());
		u.getProject_details().setDescription1(rd.getDescription1());
		u.getProject_details().setTitle2(rd.getTitle2());
		u.getProject_details().setDescription2(rd.getDescription2());
		u.getProject_details().setUser_id(user);
		
		return "Project Details Saved !!";
	}
	@Override
	public String saveAchivementsDetails(User user,AchivementsDetails ad) {
		User u=mgr.find(User.class, user.getId());
		u.getAchivements_details().setMessage(ad.getMessage());
        u.getAchivements_details().setUser_id(user);
		
		return "Achivements Details Saved !!";
	}
	@Override
	public String SaveAppliedstudents(User user, Appliedstudents as, CreateDrive cd) {
		// TODO Auto-generated method stub
		Appliedstudents at=new Appliedstudents();
		at.setCid(cd);
		at.setUser_id(user);
		at.setEmail(as.getEmail());
		at.setName(as.getName());
		at.setStatus("Applied");
		mgr.persist(at);
		return "AppliedStudents saved successfully";
	}
	@Override
	public List<Appliedstudents> fetchAllappliedstudents(CreateDrive cd) {
		// TODO Auto-generated method stub
		return mgr.createQuery("select c from Appliedstudents c where c.cid=:cid", Appliedstudents.class).setParameter("cid",cd).getResultList();
		
	}
	@Override
	public String deletedrive(int cid) {
		// TODO Auto-generated method stub
		Appliedstudents ad=mgr.find(Appliedstudents.class,cid);
		mgr.remove(ad);
		return "Company removed" ;

	}
	@Override
	public String savependingdriveDetails(Pendingapplication pd) {
		// TODO Auto-generated method stub
		
		mgr.persist(pd);
		return "pending application saved!" ;
	}
	@Override
	public List<Appliedstudents> fetchAllappliedstudents(User user) {
		// TODO Auto-generated method stub
		return mgr.createQuery("select c from Appliedstudents c where c.user_id=:user", Appliedstudents.class).setParameter("user",user).getResultList();
	}
	@Override
	public List<Pendingapplication> fetchPendingDrive(String username) {
		// TODO Auto-generated method stub
		return mgr.createQuery("select c from Pendingapplication c where c.username=:user", Pendingapplication.class).setParameter("user",username).getResultList();
	}
	@Override
	public String saveselectedstudents() {
		// TODO Auto-generated method stub
		return "Selected students table is created!!";
	}
	
	
	
	
}