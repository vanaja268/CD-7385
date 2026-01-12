public class SafeC2_IdCast {
    public void run() {
        Id aid = (Id)ApexPages.currentPage().getParameters().get('id');
        String q = 'SELECT Id FROM Account WHERE Id = :aid';
        // still dynamic string, but uses bind variable (safe)
        Database.query(q);
    }
}
