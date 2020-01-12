package com.fym.struts.day2;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import java.util.Map;

/**z自定义拦截器类
 * Created by lenovo on 2019/12/27.
 */
public class LoginInterceptor extends AbstractInterceptor {

    @Override
    public String intercept(ActionInvocation actionInvocation) throws Exception {
        Map<String, Object> session = actionInvocation.getInvocationContext().getSession();
        Object o = session.get("USER_IN_SESSION");
        if(o==null){
            return "login";
        }
        return actionInvocation.invoke();
    }
}
