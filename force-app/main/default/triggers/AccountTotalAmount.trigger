/*
 * Description This is a trigger to update parent(Account) Total Amount Field that is a custom Look up field.
 * Helper - AccountTotalAmountHelper
 * createdBy          version              createdDate
 * Subhadeep Maiti    <first>              11/05/2023
 */
trigger AccountTotalAmount on Contact (after delete, after insert, after update) {
    if(Trigger.isAfter && (Trigger.isInsert || Trigger.isUpdate) )  {
        /* This can be done through Salesforce Lightning Flow */
    }
    
    /**After Delete event we need to update the Account.Total_Amount(i.e. custom Rollup Summery field of Contact.Total) */
    if(Trigger.isAfter && Trigger.isDelete) {
        AccountTotalAmountHelper.updateAccountTotalAmount(new List<List<Contact>>{Trigger.Old});
    }
}