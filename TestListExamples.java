import static org.junit.Assert.*;
import org.junit.*;
import java.util.*;


public class TestListExamples {
  // Write your grading tests here!
  @Test
  public void testLE1(){
    assertEquals(5,5);
  }

  @Test
  public void testLE2(){
    assertEquals(13,13);
  }
  /*
  @Test 
  public void testFilter() {
    String[] str = {"abc","abcd","edcba","a"};
    List<String> lst = Arrays.asList(str);
    String[] str2 ={"abcd","edcba"};
    List<String> exp = Arrays.asList(str2);
    assertEquals(exp, ListExamples.filter(lst,new LongerThan3()));
  }
  */


}
