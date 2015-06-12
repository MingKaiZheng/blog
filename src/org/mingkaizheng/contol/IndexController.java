package org.mingkaizheng.contol;

import com.jfinal.core.Controller;

public class IndexController extends Controller {
	public void index() {
		renderJsp("index.jsp");
	}
}
// System.out.println("IP : " + getRequest().getRemoteAddr());
// String ip = getRequest().getHeader("X-Real-IP");
// if (ip!=null && !"".equals(ip) && !"unknown".equalsIgnoreCase(ip)) {
// System.out.println(ip);
// }else{
// ip = getRequest().getHeader("X-Forwarded-For");
// if (ip!=null && !"".equals(ip) && !"unknown".equalsIgnoreCase(ip)) {
// // 多次反向代理后会有多个IP值，第一个为真实IP。
// int index = ip.indexOf(',');
// if (index != -1) {
// System.out.println(ip.substring(0, index));
// } else {
// System.out.println(ip);
// }
// } else {
// System.out.println(getRequest().getRemoteAddr());
// }
// }