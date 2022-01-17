package cn.dao;

import cn.entity.Myfollowinfo;
import cn.entity.Userinfo;
import java.util.List;

public interface IFollowDao {
	void save(Myfollowinfo var1);

	List<Userinfo> getfollows(String var1);
}