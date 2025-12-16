package io.devdash.dev_dashboard.exception;

import java.util.NoSuchElementException;

public class AuthorityNotFoundException extends NoSuchElementException {
    public AuthorityNotFoundException(String message) {
        super(message);
    }
}
