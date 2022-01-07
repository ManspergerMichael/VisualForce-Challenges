public with sharing class ChallengeThreeController {
    private String internalMessage = '';
    public String getMessage() {
        return internalMessage;
    }

    public ChallengeThreeController(ApexPages.StandardSetController controller) {
        
    }
    public String retriveAccountName(){
       ID accId = ApexPages.currentPage().getParameters().get('id');
       List<Account> acc = [SELECT name FROM Account WHERE id = :accId LIMIT 1];
       if(acc.size() == 0){
           return '';
       } 
       return acc[0].name;
       
    }
    public void DisplayAccountName(){
        System.debug('Account name was ' + retriveAccountName());
        internalMessage = retriveAccountName();

    }
   

}
