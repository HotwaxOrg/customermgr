package com.customer;

import java.util.Map;
import java.util.HashMap;
import java.util.Locale;
import java.sql.Timestamp;

import org.apache.ofbiz.service.DispatchContext;
import org.apache.ofbiz.base.util.Debug;
import org.apache.ofbiz.entity.Delegator;
import org.apache.ofbiz.service.LocalDispatcher;
import org.apache.ofbiz.base.util.UtilMisc;
import org.apache.ofbiz.entity.GenericValue;
import org.apache.ofbiz.entity.GenericEntityException;
import org.apache.ofbiz.service.ServiceUtil;
import org.apache.ofbiz.base.util.UtilDateTime;


public class CustomerServices{
    private static final String MODULE = CustomerServices.class.getName();

//    Service to create a customer
    public static Map<String, Object> createCustomer(DispatchContext dctx, Map<String, ? extends Object> context){
        Map<String, Object> result = new HashMap<>();
        Delegator delegator = dctx.getDelegator();
        LocalDispatcher dispatcher = dctx.getDispatcher();
        Locale locale = (Locale) context.get("locale");

        // Get input parameters
        String firstName = (String) context.get("firstName");
        String lastName = (String) context.get("lastName");
        String gender = (String) context.get("gender");
        String emailAddress = (String) context.get("emailAddress");
        String dob = (String) context.get("dob");
        String address1 = (String) context.get("address1");
        String address2 = (String) context.get("address2");
        String city = (String) context.get("city");
        String postalCode = (String) context.get("postalCode");
        String stateProvinceGeoId = (String) context.get("stateProvinceGeoId");
        String countryGeoId = (String) context.get("countryGeoId");
        String countryCode = (String) context.get("countryCode");
        String areaCode = (String) context.get("areaCode");
        String contactNumber = (String) context.get("contactNumber");

        try {
//            Generating a party id
            String partyId = delegator.getNextSeqId("Party");

//        Creating party
            GenericValue party = delegator.makeValue("Party",
                    UtilMisc.toMap("partyId", partyId, "partyTypeId", "PERSON", "statusId", "PARTY_ENABLED"));
            delegator.create(party);

//        Creating party role
            GenericValue partyRole = delegator.makeValue("PartyRole",
                    UtilMisc.toMap("partyId", partyId, "roleTypeId", "CUSTOMER"));
            delegator.create(partyRole);

//        Creating person
            GenericValue person = delegator.makeValue("Person",
                    UtilMisc.toMap("partyId", partyId, "firstName", firstName, "lastName", lastName, "gender", gender));
            delegator.create(person);

//            Creating contact mech for email address
            String contactMechId1 = delegator.getNextSeqId("ContactMech");
            GenericValue contactMech1 = delegator.makeValue("ContactMech",
                    UtilMisc.toMap("contactMechId", contactMechId1, "contactMechTypeId", "EMAIL_ADDRESS", "infoString", emailAddress));
            delegator.create(contactMech1);

            GenericValue partyContactMech1 = delegator.makeValue("PartyContactMech",
                    UtilMisc.toMap("partyId", partyId, "contactMechId", contactMechId1, "fromDate", UtilDateTime.nowTimestamp(), "thruDate",
                            UtilDateTime.toTimestamp("2026-01-01 00:00:00")));
            delegator.create(partyContactMech1);

            GenericValue partyContactMechPurpose1 = delegator.makeValue("PartyContactMechPurpose",
                    UtilMisc.toMap("partyId", partyId, "contactMechId", contactMechId1, "fromDate", UtilDateTime.nowTimestamp(), "thruDate",
                            UtilDateTime.toTimestamp("2026-01-01 00:00:00"),
                            "contactMechPurposeTypeId", "PRIMARY_EMAIL"));
            delegator.create(partyContactMechPurpose1);

//            Creating contact mech for postal address
            String contactMechId2 = delegator.getNextSeqId("ContactMech");
            GenericValue contactMech2 = delegator.makeValue("ContactMech",
                    UtilMisc.toMap("contactMechId", contactMechId2, "contactMechTypeId", "POSTAL_ADDRESS"));
            delegator.create(contactMech2);

            GenericValue postalAddress = delegator.makeValue("PostalAddress",
                    UtilMisc.toMap("contactMechId", contactMechId2, "address1", address1, "address2", address2, "city", city,
                    "postalCode", postalCode, "stateProvinceGeoId", stateProvinceGeoId, "countryGeoId", countryGeoId));
            delegator.create(postalAddress);

            GenericValue partyContactMech2 = delegator.makeValue("PartyContactMech",
                    UtilMisc.toMap("partyId", partyId, "contactMechId", contactMechId2, "fromDate", UtilDateTime.nowTimestamp(), "thruDate",
                            UtilDateTime.toTimestamp("2026-01-01 00:00:00")));
            delegator.create(partyContactMech2);

            GenericValue partyContactMechPurpose2 = delegator.makeValue("PartyContactMechPurpose",
                    UtilMisc.toMap("partyId", partyId, "contactMechId", contactMechId2, "fromDate", UtilDateTime.nowTimestamp(), "thruDate",
                            UtilDateTime.toTimestamp("2026-01-01 00:00:00"),
                            "contactMechPurposeTypeId", "GENERAL_LOCATION"));
            delegator.create(partyContactMechPurpose2);

//            Creating contact mech for telecom number
            String contactMechId3 = delegator.getNextSeqId("ContactMech");
            GenericValue contactMech3 = delegator.makeValue("ContactMech",
                    UtilMisc.toMap("contactMechId", contactMechId3, "contactMechTypeId", "TELECOM_NUMBER"));
            delegator.create(contactMech3);

            GenericValue telecomNumber = delegator.makeValue("TelecomNumber",
                    UtilMisc.toMap("contactMechId", contactMechId3, "areaCode", areaCode, "countryCode", countryCode, "contactNumber", contactNumber));
            delegator.create(telecomNumber);

            GenericValue partyContactMech3 = delegator.makeValue("PartyContactMech",
                    UtilMisc.toMap("partyId", partyId, "contactMechId", contactMechId3, "fromDate", UtilDateTime.nowTimestamp(), "thruDate",
                            UtilDateTime.toTimestamp("2026-01-01 00:00:00")));
            delegator.create(partyContactMech3);

            GenericValue partyContactMechPurpose3 = delegator.makeValue("PartyContactMechPurpose",
                    UtilMisc.toMap("partyId", partyId, "contactMechId", contactMechId3, "fromDate", UtilDateTime.nowTimestamp(), "thruDate",
                            UtilDateTime.toTimestamp("2026-01-01 00:00:00"),
                            "contactMechPurposeTypeId", "PRIMARY_PHONE"));
            delegator.create(partyContactMechPurpose3);
            
            result.put("partyId", partyId);
            return result;
        }
        catch (GenericEntityException e){
            return ServiceUtil.returnError("Error creating order: " + e.getMessage());
        }
    }
}