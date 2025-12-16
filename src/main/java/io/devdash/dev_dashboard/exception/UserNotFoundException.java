package io.devdash.dev_dashboard.exception;

import java.util.NoSuchElementException;

public class UserNotFoundException extends NoSuchElementException {
    public UserNotFoundException(String message) {
        super(message);
    }
}
