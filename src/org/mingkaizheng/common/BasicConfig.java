package org.mingkaizheng.common;

import org.mingkaizheng.contol.IndexController;
import org.mingkaizheng.contol.NestController;

import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.CaseInsensitiveContainerFactory;
import com.jfinal.plugin.activerecord.cache.EhCache;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.render.ViewType;

public class BasicConfig extends JFinalConfig {

	@Override
	public void configConstant(Constants me) {
		loadPropertyFile("config.txt");
		me.setDevMode(getPropertyToBoolean("devMode", false));
		me.setViewType(ViewType.JSP);
		me.setBaseViewPath("/page");
	}

	@Override
	public void configRoute(Routes me) {
		me.add("/", IndexController.class);
		me.add("/nest", NestController.class);
	}

	@Override
	public void configPlugin(Plugins me) {
		C3p0Plugin dsMysql = new C3p0Plugin(getProperty("basicJdbcUrl"),
				getProperty("basicUser"), getProperty("basicPassword").trim());
		me.add(dsMysql);

		ActiveRecordPlugin arpMysql = new ActiveRecordPlugin("basicData",
				dsMysql);
		me.add(arpMysql);
		arpMysql.setCache(new EhCache());
		arpMysql.setContainerFactory(new CaseInsensitiveContainerFactory());

	}

	@Override
	public void configInterceptor(Interceptors me) {
		// TODO Auto-generated method stub

	}

	@Override
	public void configHandler(Handlers me) {
		// TODO Auto-generated method stub

	}

}
