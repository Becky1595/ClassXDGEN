trigger OpportunityTrigger1 on Opportunity (before insert) {

    for (Opportunity opp : trigger.new) {
        Boolean respuesta = OpportunityHelp.OpportunityHelp(opp.AccountId);
        if(respuesta){
            opp.addError('Existe una Opportunidad sin cerrar');
        }
        
    }
}