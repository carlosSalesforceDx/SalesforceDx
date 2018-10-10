public without sharing class AccountController {
    public AccountController() {
        @AuraEnabled
        public static list<Account> findAll(){
          return [select id, Name,Location__Latitude__s,Location__Longitude__s
                    From Account Where Location__Latitude__s!=null AND Location__Longitude__s!=null 
                    limit 50];
        }
    }
}
