@isTest
public with sharing class OpportunityTest {
    @TestSetup
    static void makeData(){
        Account acc = new Account();
        acc.Name = 'Ejercicio';
        Insert acc;

        Account acc1 = new Account();
        acc1.Name = 'Ejercicio1';
        Insert acc1;

        Opportunity opp = new Opportunity();
        opp.AccountId = acc.Id;
        opp.Name= 'opp1';
        opp.StageName = 'Closed Won';
        opp.CloseDate = System.today();
        Insert opp;

        Opportunity opp1 = new Opportunity();
        opp1.AccountId = acc1.Id;
        opp1.Name= 'opp2';
        opp1.StageName = 'Qualification';
        opp1.CloseDate = System.today();
        Insert opp1;



    }
    
    @isTest 
    static void NewOpportunity(){
        Account acc = [SELECT Id, Name FROM Account WHERE Name = 'Ejercicio'];
        Opportunity opp2 = new Opportunity();
        opp2.AccountId = acc.Id;
        opp2.Name= 'opp3';
        opp2.StageName = 'Qualification';
        opp2.CloseDate = System.today();
        Insert opp2;
    }

    public static testMethod void NewOpportunityError(){
        try {
        Account acc = [SELECT Id, Name FROM Account WHERE Name = 'Ejercicio1'];
        Opportunity opp3 = new Opportunity();
        opp3.AccountId = acc.Id;
        opp3.Name= 'opp4';
        opp3.StageName = 'Qualification';
        opp3.CloseDate = System.today();
        Insert opp3;
        } catch (Exception e) {
            System.debug(e.getMessage());
        }
    }
}