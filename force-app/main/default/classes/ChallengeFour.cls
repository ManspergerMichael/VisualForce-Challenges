public with sharing class ChallengeFour {
    public String message = '';

    public ChallengeFour(){
        
    }

    public Account displayAccountName(){
        Account acc = [SELECT name FROM Account WHERE account.id = '0015f00000GPES6AAP' LIMIT 1];
        
        return acc;
    }

    public void getMessage() {
        message = displayAccountName().name;
    }


}
