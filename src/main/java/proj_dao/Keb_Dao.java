package proj_dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import proj_dto.Keb_Dto;

@Component
public class Keb_Dao {
	@Autowired
	Keb_Dto dto1;
	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("dev");
	EntityManager entityManager = entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction = entityManager.getTransaction();

	public String insert2(Keb_Dto dto) {
		entityTransaction.begin();
		entityManager.persist(dto);
		entityTransaction.commit();
		return "data inserted";
	}

	public ModelAndView fetch(long reg_id) {
		Keb_Dto dto = entityManager.find(Keb_Dto.class, reg_id);
//		int total = dto.getKannada() + dto.getEnglish() + dto.getBiology() + dto.getChemistry() + dto.getPhysics()
//				+ dto.getMathematics();
//		float percent = total / 6;
//		String perc = "" + percent;
//		dto1.percentage(perc);
		ModelAndView andView = new ModelAndView();
		if (dto.getKannada() >= 35 && dto.getEnglish() >= 35 && dto.getBiology() >= 35 && dto.getChemistry() >= 35
				&& dto.getPhysics() >= 35 && dto.getMathematics() >= 35) {
			andView.setViewName("fetch_pass.jsp");
			andView.addObject("pass_obj",dto);
		} else {
			andView.setViewName("fetc_fail.jsp");
			andView.addObject("fail_obj",dto);
//			String s = "" + total;
//			dto1.getTotal(s);
		}
		return andView;

	}

}
