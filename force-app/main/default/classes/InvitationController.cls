public without sharing class InvitationController {
    
    //Get Invitation details by Id
    @AuraEnabled(cacheable=true)
    public static Invitation__c getInvitationDetailsById(String Id){
        try{
            return [SELECT Id, Twitter_URL__c, Theme__c, Instagram_URL__c, Greeting_Message__c, Facebook_URL__c, Event_Participants__c,
            Event_Introduction__c, Event_Date_and_Time__c from Invitation__c where Id= : Id];
        } catch(Exception e){
            throw new AuraHandledException(e.getMessage());
        }
    }
}