package cn.dao;

import cn.entity.Userinfo;

public interface IUserDao {
	void Save(Userinfo var1);

	void Reset(Userinfo var1);

	Userinfo getUserinfo(String var1);

	boolean userExists(String var1, String var2);

	boolean userExists(String var1);
}