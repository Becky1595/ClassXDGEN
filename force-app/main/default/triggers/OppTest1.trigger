trigger OppTest1 on Opportunity (before insert) {

    for (Opportunity opp : trigger.new) {
        System.debug(opp.AccountId);
        Boolean res =  OppHelper.OppHelper(opp.AccountId);
        if(res){
            opp.addError('Existe una Oportuidad sin cerrar');
        }
    }

}