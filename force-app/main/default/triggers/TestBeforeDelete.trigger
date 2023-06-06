trigger TestBeforeDelete on Account (before delete) {
    /*
    Account Acc =[SELECT Id, Name FROM Account WHERE Id='0018b00002QH5mwAAD' LIMIT 1];
    delete acc;
    */

    for (Account acc : trigger.old) {
        List<Opportunity> relatedOpportunities =[SELECT Id, AccountId, StageName FROM Opportunity 
                                                WHERE AccountId =: acc.Id AND StageName != 'Closed Won' LIMIT 1];
        if (!relatedOpportunities.isEmpty()) {
            acc.addError('No se puede eliminar una cuenta con oportunidades abiertas relacionadas');
        }
    }
}