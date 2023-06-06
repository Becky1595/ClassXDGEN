trigger AccountAfterDelete on Account (After delete) {
     /*
    Account acc = [SELECT Id, Name FROM Account WHERE Id='']
    delete acc;
    */
    List<String> DeleteAccountName = new List<String>();
    for (Account acc : trigger.old) {
        DeleteAccountName.add(acc.Name);
        System.debug('Cuentas Actualizada: ' + DeleteAccountName);
        
    }

}