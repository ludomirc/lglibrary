package com.lg.servlet.library.util;

import com.lg.library.service.BaseService;
import sun.security.provider.PolicySpiFile;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import java.util.Properties;

/**
 * Created by Benek on 2015-10-01.
 */
public class LookupUtil {

    public static final String INITIAL_CONTEXT_FACTORY = "org.apache.openejb.core.LocalInitialContextFactory";

    private LookupUtil() {
    }

    public static BaseService lookupServiceInLocalContext(String serviceName) throws NamingException {
        Properties props = new Properties();
        props.put(Context.INITIAL_CONTEXT_FACTORY, INITIAL_CONTEXT_FACTORY);
        Context ctx = new InitialContext(props);
        BaseService service = (BaseService) ctx.lookup(serviceName);
        return service;
    }
}
