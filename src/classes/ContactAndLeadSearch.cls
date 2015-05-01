public class ContactAndLeadSearch {
    public static List<List< SObject>> searchContactsAndLeads(String name){ 
        List<List< SObject>> objectList=[find :name returning Contact(firstname,lastname),Lead(firstname,lastname)];
        return objectList;
    }
}