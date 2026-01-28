/**
* @description Controller class for ContactRetriever component
* @author Akshay Gupta
*/
public with sharing class AuraClass1 {
	
    /**
    * @description Method for getting contact's Last Name by Id
    * @param Id contactId
    * @return String
    */ 
    @AuraEnabled
    public static String getContactName(Id contactId) {
        return [SELECT LastName FROM Contact WHERE Id =: contactId WITH SECURITY_ENFORCED].LastName;
    }
    
    /**
    * @description Method for getting contact's Last Name by Id
    * @return List<Account>
    */     
    @AuraEnabled
    public static List<Account> getAccountList() {
        return [SELECT Name FROM Account WITH SECURITY_ENFORCED LIMIT 10];
    }
    
   

       
    @auraEnabled
    public static List<Account> getCases(String name) {
        return [SELECT Name, (SELECT CaseNumber FROM Cases) FROM Account WHERE Name =: name WITH SECURITY_ENFORCED];
    }    
    
}
