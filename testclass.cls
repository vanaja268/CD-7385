public class TC2_Param {
    public void run(String userInput) {             // line 2 (SOURCE)
        String q = 'SELECT Id FROM Account WHERE Name = \''; // line 3
        q += userInput;                             // line 4 (TRANSFORMATION)
        q += '\'';                                  // line 5
        Database.query(q);                          // line 6 (SINK)
    }
}
