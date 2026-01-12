public class TC5_MultiStep {
    public void run() {
        String input = ApexPages.currentPage().getParameters().get('filter'); // line 3 (SOURCE)
        String q = 'SELECT Id FROM Account WHERE ';                           // line 4
        String clause = input;                                                // line 5 (ASSIGNMENT)
        q = q + clause;                                                       // line 6 (ASSIGNMENT/TRANSFORM)
        Database.query(q);                                                    // line 7 (SINK)
    }
}
