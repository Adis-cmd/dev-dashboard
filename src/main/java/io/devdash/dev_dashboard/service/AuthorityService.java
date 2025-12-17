package io.devdash.dev_dashboard.service;

import io.devdash.dev_dashboard.entity.user.Authority;

public interface AuthorityService {
    Authority findAuthorityByName(String name);
}
