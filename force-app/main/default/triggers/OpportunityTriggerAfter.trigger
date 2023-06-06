trigger OpportunityTriggerAfter on Opportunity (After insert) {
    /*
    Account acc = new Account ();
    acc.Name = 'Test After insert2';
    insert acc;

    Pricebook2 customPB = New Pricebook2();
    customPB.Name='Standar Price Book2';
    customPB.isActive=true;
    insert customPB;

    Opportunity opp = new Opportunity();
    opp.AccountId = acc.Id;
    opp.Pricebook2Id = cutomPB.Id;
    opp.Name = 'Opp After2';
    opp.CloseDate = System.today();
    opp.stageName = 'New';
    insert opp;
    */

    List<String> opportunityName = new List<String>();

    for (Opportunity opp : trigger.new) {
        opportunityName.add(opp.Name);
        System.debug('Nuevas oportunidades insertadas: ' + opportunityName);
        
    }

}