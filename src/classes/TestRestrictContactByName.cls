@isTest
public class TestRestrictContactByName {
    @isTest static void testInsert(){
        Contact contact=new Contact(LastName='INVALIDNAME');
        Test.startTest();
        Database.SaveResult result=Database.insert(contact,false);
        Test.stopTest();
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "'+contact.LastName+'" is not allowed for DML', result.getErrors()[0].getMessage());
    }
}