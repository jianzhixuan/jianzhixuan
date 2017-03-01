package cn.stud.show;

import java.util.List;

import cn.domain.Stud;

public class ShowAllService {
	private ShowAllDao dao = new ShowAllDao();
	public List<Stud> query(){
		return dao.query();
	}
}
