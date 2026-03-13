package petstore.user;
import com.intuit.karate.junit5.Karate;
public class PetstoreRunner {
    @Karate.Test
    Karate testUser() {
        return Karate.run("user").relativeTo(getClass());
    }
}
