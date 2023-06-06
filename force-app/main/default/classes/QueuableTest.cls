@isTest
public with sharing class QueuableTest {
    @testSetup
    static void setup() {
        List<Account> accounts = new List<Account>();
        accounts.add(new Account(name='Parent'));
        for (Integer i = 0; i < 100; i++) {
            accounts.add(new Account(
                name='Test Account'+i
            ));
        }
        insert accounts;
    }

    @isTest
    static void  QueuableTest() {
        Id parentId = [select id from account where name = 'Parent'][0].Id;
        List<Account> accounts = [select id, name from account where name like 'Test Account%'];
        //QueueableFuture updater = new QueueableFuture(accounts, parentId);
        Test.startTest();
        //System.enqueueJob(updater);
        Test.stopTest();
        System.assertEquals(100, [select count() from account where parentId = :parentId]);
    }
}