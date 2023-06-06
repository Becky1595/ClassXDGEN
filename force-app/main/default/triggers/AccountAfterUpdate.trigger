trigger AccountAfterUpdate on Account (after update) {
    /*
    Account acc = [SELECT Id, Name FROM Account WHERE Id='0018b00002QHF5BAAX'];
    acc.Name = 'After Update';
    update acc;
    */


    List<String> UpdateAccountName = new List<String>();
    for (Account acc : trigger.new) {
        UpdateAccountName.add(acc.Name); 
        System.debug(LoggingLevel.DEBUG,'Nombre cuenta '+acc.Name);
        
    }
    System.debug('Cuentas Actualizada: ' + UpdateAccountName);
}