public with sharing class OpportunityHelp {
    public static Boolean OpportunityHelp(Id accId) {

        Boolean resul =false;
        List<Opportunity> listOppClose = new List<Opportunity>();

        listOppClose = [SELECT  Id, AccountId, StageName FROM Opportunity WHERE AccountId =: accId];

        for (Opportunity opp : listOppClose) {
            
            if(opp.StageName != 'Closed Won'&& opp.StageName != 'Closed Lost' ){
                resul = true;
            }
        }
        return resul;

    }
}