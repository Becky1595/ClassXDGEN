trigger OpportunityTrigger on Opportunity (before update) {

    /*
    Opportunity opp =[SELECT Id, Name, Amount FROM Opportunity WHERE Id='0068b00001Qm30YAAR' LIMIT 1];
    opp.Amount = 100;
    Update opp
    */

    for (Opportunity opp : trigger.new) {
        if (opp.Amount >1000000) {
            opp.addError('El monto no puede ser mayot a $1,000,000.');
        }else{
            opp.CloseDate = opp.CloseDate.addDays(1);
        }
    }

}