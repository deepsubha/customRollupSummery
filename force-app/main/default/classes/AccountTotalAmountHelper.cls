/*
 *Author:         Subhadeep Maiti
 *Dev-env:        deepsubha22
 *Description:    This is to calculate the Account.Total_Amount from all the child Contact.Amount s.
 *History
 *createdBy          version              createdDate
 *Subhadeep Maiti    <first>              11/05/2023
*/
public class AccountTotalAmountHelper {
	/**
    * @description :Update Account.Total_Amount(custom Roll Up Summery) field of Contact.Amount
    * @param estimateRRs - List of List of old versions of Estimate Role Request records
    */
    @InvocableMethod(label='Account Total Amount' description='This is to update Account.Total Amount(i.e. custom Roll Up summery)')
    public static void updateAccountTotalAmount( List<List<Contact>> contacts) {
        List<Contact> cons = contacts.get(0);
        Double deletedAmount = 0;
        Double accountTotalAmount = 0;
        Account acc = new Account();
        if ( Trigger.isExecuting ) {
            try{
                if (!cons.isEmpty()) {
                    acc = [select Id, Total_Amount__c  from Account where id = :cons[0].AccountId];
                    for (Contact con: cons) {
                        if (con.Amount__c  != null) deletedAmount += con.Amount__c;
                    }
                }
    
                if (acc != null && acc?.Total_Amount__c != null && acc?.Total_Amount__c != 0 && deletedAmount != 0) {
                    acc.Total_Amount__c = acc.Total_Amount__c - deletedAmount;
                    if (Schema.sObjectType.Account.fields.Total_Amount__c.isUpdateable()){ update acc; }
                }
            }catch( Exception ex ) {
                //ErrorLogsUtils.doLog('updateAccountTotalAmount(TRIGGER)','Error','AccountTotalAmountHelper',String.valueOf(ex.getMessage()),acc.Id);
            }
        }else {
            try{
                if (!cons.isEmpty()) {
                    acc = [select Id, Total_Amount__c  from Account where id = :cons[0].AccountId];
                    for (Contact con: cons) {
                        if (con.Amount__c != null) accountTotalAmount += con.Amount__c;
                    }
                }
    
                if (acc != null && accountTotalAmount != 0 &&
                    Schema.sObjectType.Account.fields.Total_Amount__c.isUpdateable()){
                        acc.Total_Amount__c = accountTotalAmount;
                        update acc; 
                }
            }catch( Exception ex ) {
				//ErrorLogsUtils.doLog('updateAccountTotalAmount(TRIGGER)','Error','AccountTotalAmountHelper',String.valueOf(ex.getMessage()),acc.Id);            
			}
        }
    }
}