public class marketServices 
{
    @auraEnabled
    public static List<Space__c> getRelatedSpaces(Id recordId) 
    {
        return [SELECT Id, Daily_Booking_Rate__c, Name, Market__c, Maximum_Capacity__c, Minimum_Capacity__c, Picture_URL__c, Category__c, Type__c 
                FROM Space__c 
                WHERE Market__c = :recordId];
    }

    @auraEnabled
    public static List<Market__c> getMarketsByState(String state)
    {
        return [SELECT Id, City__c 
                FROM Market__c 
                WHERE State__c = :state];
    }
}
