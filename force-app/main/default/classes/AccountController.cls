public with sharing class AccountController {
    @AuraEnabled
    public static list<Account> findAll(){
        return [select id, Name,Location__Latitude__s,Location__Longitude__s
                From Account Where location__Latitude__s!=null AND location__Longitude__s!=null 
                limit 50];hjhjhjh;
    }
}      

