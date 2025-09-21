package demoblaze;

import com.intuit.karate.junit5.Karate;

public class KarateRunner {
    @Karate.Test
    Karate testAll() {
        // Ejecuta todos los .feature dentro de src/test/resources/demoblaze
        return Karate.run("classpath:demoblaze").relativeTo(getClass());
    }
}

