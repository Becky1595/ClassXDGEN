public with sharing class OppHelper {
    public static Boolean OppHelper(Id accId) {
        System.debug('clase ' + accId);
        Boolean Resultado = false;
        List<Opportunity> listOppClose = new List<Opportunity>();
        listOppClose = [SELECT Id, AccountId, StageName	 
                        FROM Opportunity WHERE AccountId =: accId ];
        
		System.debug('clase lista ' + listOppClose);
        for (Opportunity opp : listOppClose) {
            System.debug(opp.StageName);
            if (opp.StageName != 'Closed Won' && opp.StageName != 'Closed Lost') {
                Resultado = true;
            }
        }
        return Resultado;
    }
}