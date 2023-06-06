trigger AccountTrigger on Account (before insert,before update,after insert) {
    /*
    Ejemplo de creacion de cuenta
    Account acc = new Account();
    acc.Name = 'Andre Test';
    insert acc;
    */

    
    if (trigger.isBefore) {
        if(trigger.isInsert){
            
            ClaseApexTest.multiplicar(a, b);
        }
    }

    if (trigger.isAfter) {
        
    }

    for (Account acc : trigger.new) {
        List<Account> listAcc = [SELECT Id,Name FROM Account Where Name =: acc.Name LIMIT 1];

        if (!listAcc.isEmpty()) {
            acc.addError('Ya existe una cuenta con el mismo nombre');
        }
        
    }

}