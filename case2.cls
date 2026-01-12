public class TC3_PageParams {
    public void run() {
        String p = ApexPages.currentPage().getParameters().get('name'); // line 3 (SOURCE)
        String q = 'SELECT Id FROM Account WHERE Name = \'' + p + '\''; // line 4 (SINK-ish, also transform)
        Database.query(q);                                              // line 5 (SINK)
    }
}
