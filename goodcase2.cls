public class SafeC3_Allowlist {
    public void run() {
        String sortField = ApexPages.currentPage().getParameters().get('sort');
        Set<String> allowed = new Set<String>{ 'Name', 'CreatedDate' };
        if (!allowed.contains(sortField)) sortField = 'Name';
        String q = 'SELECT Id, Name FROM Account ORDER BY ' + sortField;
        Database.query(q);
    }
}
