trigger TriggerUndelete on Account (after undelete) {
    List<String> DeleteAccountNames = new List<String>();

    for (Account acc : trigger.new) {
        DeleteAccountNames.add(acc.Name);
    }

    System.debug('Cuentas eliminadad: ' + DeleteAccountNames);
}