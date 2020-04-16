package com.jsp.test;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import com.sun.org.apache.bcel.internal.generic.INSTANCEOF;

/**
 * Application Lifecycle Listener implementation class InitListener
 *
 */
@WebListener
public class InitListener implements ServletContextListener {

    public void contextDestroyed(ServletContextEvent sce)  { 
    	
    }

    public void contextInitialized(ServletContextEvent sce)  { 
    	String childType = sce.getServletContext().getInitParameter("child");
    	
    	Child child = null;
    	
    	try {
			child = (Child) Class.forName(childType).newInstance();
		} catch (Exception e) {
			e.printStackTrace();
		}
    	
    	Parent.getInstance().setChild(child);
    }
	
}
