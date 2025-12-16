package io.devdash.dev_dashboard.service.impl;

import io.devdash.dev_dashboard.entity.user.Authority;
import io.devdash.dev_dashboard.exception.AuthorityNotFoundException;
import io.devdash.dev_dashboard.repository.user.AuthorityRepository;
import io.devdash.dev_dashboard.service.AuthorityService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AuthorityServiceImpl implements AuthorityService {

    private final AuthorityRepository authorityRepository;

    @Override
    public Authority findAuthorityByName(String name) {
        return authorityRepository.findAuthorityByName(name)
                .orElseThrow(() -> new AuthorityNotFoundException("Authority not found"));
    }
}
