package io.devdash.dev_dashboard.service.impl;

import io.devdash.dev_dashboard.dto.AuthRegisterDto;
import io.devdash.dev_dashboard.dto.ViewProfileDto;
import io.devdash.dev_dashboard.entity.user.User;
import io.devdash.dev_dashboard.exception.UserNotFoundException;
import io.devdash.dev_dashboard.repository.user.UserRepository;
import io.devdash.dev_dashboard.service.AuthorityService;
import io.devdash.dev_dashboard.service.UserService;
import io.devdash.dev_dashboard.util.FileUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Slf4j
@RequiredArgsConstructor
@Service
public class UserServiceImpl implements UserService {
    private final UserRepository userRepository;
    private final AuthorityService authorityService;
    private final PasswordEncoder passwordEncoder;

    @Override
    public User findUserByGitHubId(String userName) {
        return userRepository.findByGitHubId(userName).orElseThrow(() -> new UserNotFoundException("User not found"));
    }


    @Override
    public User findUserByEmail(String email) {
        return userRepository.findByEmail(email).orElseThrow(() -> new UserNotFoundException("User not found"));
    }



    @Transactional
    @Override
    public void saveUser(AuthRegisterDto dto) {
        User user = User.builder()
                .email(dto.getEmail())
                .name(dto.getName())
                .password(passwordEncoder.encode(dto.getPassword()))
                .avatarUrl("default.png")
                .enabled(true)
                .authority(authorityService.findAuthorityByName("USER"))
                .build();
        userRepository.saveAndFlush(user);
    }


    @Override
    public boolean hasGitHubAccount(String email) {
        User user = userRepository.findByEmail(email)
                .orElseThrow(() -> new UserNotFoundException("User not found"));

        return user.getGitHubId() != null ? true : false;
    }


    @Override
    public ViewProfileDto viewProfile(String email) {
        User user = userRepository.findByEmail(email)
                .orElseThrow(() -> new UserNotFoundException("User not found"));


        return ViewProfileDto.builder()
                .name(user.getName())
                .login(user.getLogin())
                .bio(user.getBio())
                .avatarUrl(user.getAvatarUrl())
                .followers(user.getTotalFollowers())
                .following(user.getTotalFollowing())
                .totalStars(user.getTotalStars())
                .totalCommits(user.getTotalCommits())
                .totalRepos(user.getTotalRepos())
                .readMe(user.getReadMe())
                .build();
    }


    @Override
    public ResponseEntity<?> findByName(String imageName) {
        log.info("Получение файла изображения с именем: {}", imageName);
        return FileUtil.getOutputFile(imageName, "images/");
    }

}
