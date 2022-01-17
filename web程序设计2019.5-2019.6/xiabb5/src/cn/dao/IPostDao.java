package cn.dao;

import cn.entity.Postinfo;

public interface IPostDao {
	void Save(Postinfo var1);

	Postinfo getPostinfo(int var1);
}