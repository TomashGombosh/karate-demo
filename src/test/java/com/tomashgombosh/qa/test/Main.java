package com.tomashgombosh.qa.test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.Test;

import static org.junit.Assert.assertTrue;

public class Main {

    @Test
    public void testParallel() {
        Results results = Runner.path("classpath:com/tomashgombosh/qa/test/main.feature")
                .configDir("classpath:com/tomashgombosh/qa")
                .parallel(1);
        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
    }

}
