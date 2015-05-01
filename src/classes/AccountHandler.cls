public class AccountHandler {
    public static Account insertNewAccount(String name) {
        Account account=new Account(Name=name);
        try { 
            insert account; 
        }catch(DmlException ex) {
            system.debug('ex:' + ex.getMessage());
            return null;
        }
        
        return account; 
    } 
}