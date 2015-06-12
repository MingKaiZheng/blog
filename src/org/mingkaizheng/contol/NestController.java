package org.mingkaizheng.contol;

import com.jfinal.core.Controller;

public class NestController extends Controller {
	public void index() {
		renderJsp("nest.jsp");
	}
}
