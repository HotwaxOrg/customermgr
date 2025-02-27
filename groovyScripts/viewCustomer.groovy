import org.apache.ofbiz.entity.GenericEntityException;
import org.apache.ofbiz.base.util.Debug

partyId = parameters.partyId

try {
    context.customerDetail = from("CustomerView").where("partyId", partyId).queryFirst()
} catch (GenericEntityException e) {
    Debug.logError(e, "Error fetching customer details", MODULE)
}