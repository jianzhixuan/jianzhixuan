package cn.stud.show;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import cn.domain.Stud;
import cn.utils.DSUtils;
public class ShowAllDao {
	public List<Stud> query() {
		String sql = "select * from a1";
		List<Stud> list = new ArrayList<Stud>();
		Connection con = DSUtils.getConnection();
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				Stud stud = new Stud();
				stud.setId(rs.getString("id"));
				stud.setName(rs.getString("name"));
				stud.setSex(rs.getString("sex"));
				stud.setAge(rs.getInt("age"));
				list.add(stud);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
}
