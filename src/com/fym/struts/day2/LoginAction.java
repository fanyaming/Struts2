package com.fym.struts.day2;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import lombok.Setter;

/**
 * Created by lenovo on 2019/12/27.
 */
public class LoginAction extends ActionSupport {
    @Setter
    private String username;
    @Setter
    private String  password;
    @Override
    public String execute() throws Exception {
        if("admin".equals(username)&&"1234".equals(password)){
            ActionContext.getContext().getSession().put("USER_IN_SESSION",username);
        }
        return SUCCESS;
    }
}
