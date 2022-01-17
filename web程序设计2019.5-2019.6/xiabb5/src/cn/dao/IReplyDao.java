package cn.dao;

import cn.entity.Postreplyinfo;
import cn.entity.Replyinfo;
import java.util.List;

public interface IReplyDao {
	void Save(Replyinfo var1);

	List<Postreplyinfo> getReplylist(int var1);
}