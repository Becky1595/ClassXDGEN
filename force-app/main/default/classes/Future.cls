public with sharing class Future {
    @future (callout=true)
    public static void Future(String user, String lname, String email, String alias) {
        Profile p = [SELECT Id FROM Profile WHERE Name = 'Standard User'];
        try {
            User u = new User ();
            u.Alias = alias;
            u.Email = email;
            u.EmailEncodingKey ='UTF-8';
            u.LastName = lname;
            u.LanguageLocaleKey='en_US';
            u.LocaleSidKey = 'en_US';
            u.ProfileId = p.Id;
            u.TimeZoneSidKey = 'America/Los_Angeles';
            u.Username = user;
            System.debug(u);
            Insert u;
        } catch (Exception e) {
            System.debug(e.getMessage());
        }
    }
}