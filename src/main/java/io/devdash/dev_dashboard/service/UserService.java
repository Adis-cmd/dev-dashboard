package io.devdash.dev_dashboard.service;

import io.devdash.dev_dashboard.dto.AuthRegisterDto;
import io.devdash.dev_dashboard.dto.ViewProfileDto;
import io.devdash.dev_dashboard.entity.user.User;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;

public interface UserService {
    User findUserByGitHubId(String gitHubId);

    User findUserByEmail(String email);

    @Transactional
    void saveUser(AuthRegisterDto dto);

    boolean hasGitHubAccount(String email);

    ViewProfileDto viewProfile(String email);

    ResponseEntity<?> findByName(String imageName);
}
