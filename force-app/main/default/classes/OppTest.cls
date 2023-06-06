@isTest
public with sharing class OppTest {
    @TestSetup
    static void makeData(){
        Account acc = new Account();
        acc.Name = 'EJemplo';
        Insert acc;

        Account acc1 = new Account();
        acc1.Name = 'EJemplo1';
        Insert acc1;

        Opportunity opp = new Opportunity();
        opp.AccountId = acc.Id;
        opp.Name = 'opp2';
        opp.StageName = 'Qualification';
        opp.CloseDate = system.today();
        Insert opp;

        Opportunity opp1 = new Opportunity();
        opp1.AccountId = acc1.Id;
        opp1.Name = 'opp1';
        opp1.StageName = 'Closed Won';
        opp1.CloseDate = system.today();
        Insert opp1;
    }

    @isTest 
    static void NewOpportunity(){
        Account acc =[SELECT Id, Name FROM Account WHERE Name = 'EJemplo1'];

        Opportunity opp = new Opportunity();
        opp.AccountId = acc.Id;
        opp.Name = 'opp1';
        opp.StageName = 'Qualification';
        opp.CloseDate = system.today();
        Insert opp;
    }

    @isTest 
    static void NewOpportunityError(){
        Account acc =[SELECT Id, Name FROM Account WHERE Name = 'EJemplo'];
        try {
            
            Opportunity opp = new Opportunity();
            opp.AccountId = acc.Id;
            opp.Name = 'opp1';
            opp.StageName = 'Qualification';
            opp.CloseDate = system.today();
            Insert opp;
        } catch (Exception e) {
            System.debug(e.getMessage());
        }
    }

}