package utils;

import java.util.Random;

public class AppUtility {
    public static String generateOTP() {
        return Integer.toString(new Random().nextInt(888889) + 111111);
    }
}
