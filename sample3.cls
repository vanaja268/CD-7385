public class TC1_MethodReturn {
    public void test1() {
        String field1 = getSomeID();                // line 3 (SOURCE-ish)
        String qry = 'SELECT Id FROM Account WHERE Id = ' ;  // line 4
        qry += field1;                              // line 5 (TRANSFORMATION)
        Database.query(qry);                             

        }
}
