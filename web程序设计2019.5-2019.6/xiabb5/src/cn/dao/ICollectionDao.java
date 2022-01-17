package cn.dao;

import cn.entity.Mycollection;
import cn.entity.Recommendpostinfo;
import java.util.List;

public interface ICollectionDao {
	void save(Mycollection var1);

	List<Recommendpostinfo> getmycollections(String var1);
}