trigger AccountAddressTrigger on Account (before insert, before update) {
    if (trigger.isInsert ||trigger.isUpdate) {
        for (Account acc : trigger.new) {
            if(acc.ShippingPostalCode == acc.BillingPostalCode){
                acc.Match_Billing_Address__c = true;
            }
        
        }
        
    }
}