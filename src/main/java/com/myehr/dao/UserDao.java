package com.myehr.dao;

import com.myehr.model.UserPojo;

public class UserDao {


public boolean insertUser(UserPojo suer){

    String query="insert into user (user_id,user_name,password,email)";



    return true;
}



}
