package hkmu.comps380f.exception;

import java.io.IOException;

public class UserNotFound extends Exception {
    public UserNotFound(String username) {
        super("User " + username + " does not exist.");
    }
}
