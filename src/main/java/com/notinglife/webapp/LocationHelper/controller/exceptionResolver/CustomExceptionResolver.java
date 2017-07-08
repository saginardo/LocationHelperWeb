package com.notinglife.webapp.LocationHelper.controller.exceptionResolver;

import com.notinglife.webapp.LocationHelper.exception.CustomException;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 自定义异常处理器
 *
 * @author saginardo
 * @version v1.0
 * @date 2017-07-06 13:28
 */
public class CustomExceptionResolver implements HandlerExceptionResolver {

    @Override
    public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {

        ex.printStackTrace();
        CustomException customException = null;

        //如果抛出的是系统自定义异常则直接转换
        if(ex instanceof CustomException){
            customException = (CustomException)ex;
        }else{
            //如果抛出的不是系统自定义异常则重新构造一个未知错误异常。
            customException = new CustomException("未知错误，请与系统管理员联系！");
        }

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("message", customException.getMessage());
        modelAndView.setViewName("error");
        return modelAndView;
    }
}
