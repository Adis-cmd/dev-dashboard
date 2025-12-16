package io.devdash.dev_dashboard.controller;

import io.devdash.dev_dashboard.entity.user.User;
import io.devdash.dev_dashboard.service.ProjectService;
import io.devdash.dev_dashboard.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("repository")
public class RepositoryController {
    private final UserService userService;
    private final ProjectService projectService;
}
