public class ContactSearch {
    public static List<Contact> searchForContacts(String lastName, String postalCode) {
    	List<Contact> contactList=new List<Contact>();
        Integer i=0;
        for(Contact[] contactArr:[SELECT Id, Name, MailingAddress FROM Contact where LastName= :lastName]){
           Address address=contactArr[i].MailingAddress;
           if(address.getPostalCode() == postalCode) {
                   contactList.add(contactArr[i]);
           }
           i++;
        }
            
        return contactList;
    }
}