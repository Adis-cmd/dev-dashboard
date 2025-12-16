package io.devdash.dev_dashboard.repository.user;

import io.devdash.dev_dashboard.entity.user.UserActivity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserActivityRepository extends JpaRepository<UserActivity, Long> {
}
