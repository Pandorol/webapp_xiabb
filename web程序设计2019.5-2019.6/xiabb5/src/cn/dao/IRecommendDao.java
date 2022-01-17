package cn.dao;

import cn.entity.Recommendpostinfo;
import java.util.List;

public interface IRecommendDao {
	Recommendpostinfo[] getRecomFour();

	List<Recommendpostinfo> getAllpost();

	List<Recommendpostinfo> getmypost(String var1);
}