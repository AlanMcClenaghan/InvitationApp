public without sharing class InvitationController {
    
    // Get Invitation details by Id
    @AuraEnabled(cacheable=true)
    public static Invitation__c getInvitationDetailsById(String Id) {
        try {
            return [SELECT Id, Twitter_URL__c, Theme__c, Instagram_URL__c, 
            Greeting_Message__c, Facebook_URL__c, Event_Participants__c,
            Event_Introduction__c, Event_Date_and_Time__c 
            FROM Invitation__c 
            WHERE Id = :Id];
        } catch(Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    // Get Invitation details by Id
    @AuraEnabled(cacheable=true)
    public static List<Program_Detail__c> getProgramDetailsByInvitationId(String Id) {
        try {
            return [SELECT Id, Name, Program_Date__c, Program_Start_Time__c, Program_End_Time__c 
            FROM Program_Detail__c 
            WHERE Invitation__c = :Id];
        } catch(Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

}