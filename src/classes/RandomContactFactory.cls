public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer noOfContacts,String lastName) {
        List<Contact> contactList=new List<Contact>();
        for(Integer i=1;i<=noOfContacts;i++) {
            contactList.add(new Contact(lastName=lastName+' ' + i,firstName='Test ' +i ));
        }      
        return contactList;
    }
}