public with sharing class BoatDataService {
    public static Map<Id, String>  getBoatTypes(){
        Map<Id, String> boatMap = new Map<Id, String>();
        List<BoatType__c> boatTypes = [SELECT Id, Name FROM BoatType__c WITH SECURITY_ENFORCED];
        for (BoatType__c boat: boatTypes){
            boatMap.put(boat.Id, boat.Name);
        }
        return boatMap;
    }
}