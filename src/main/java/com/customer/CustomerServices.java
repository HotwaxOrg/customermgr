package com.customer;

import java.util.Map;
import java.util.HashMap;

import org.apache.ofbiz.service.DispatchContext;

public class CustomerServices{
    private static final String MODULE = CustomerServices.class.getName();

    public static Map<String, Object> createCustomer(DispatchContext ctx, Map<String, ? extends Object> context){
        Map<String, Object> result = new HashMap<>();
        result.put("partyId", "10000");
        return result;
    }
}