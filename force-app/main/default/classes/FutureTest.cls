@isTest
public with sharing class FutureTest {
    @isTest
    static void FutureTest() {
        User thisUser = [SELECT Id FROM User WHERE Id = :UserInfo.getUserId()];
        System.runAs(thisUser){
            Test.startTest();
                Future.Future('rvazquez@labsxd.xdgen', 'Rebeca Vazquez', 'rvazquez@labsxd.com', 'Rebeca');
            Test.stopTest();
        }
        List<User> us = [SELECT Id, username FROM USER WHERE username = 'rvazquez@labsxd.xdgen'];
        System.assertEquals(1, us.size());
    }
    }
