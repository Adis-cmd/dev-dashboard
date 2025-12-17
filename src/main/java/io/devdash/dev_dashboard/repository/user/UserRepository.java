package io.devdash.dev_dashboard.repository.user;

import io.devdash.dev_dashboard.entity.user.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {


    @Query(nativeQuery = true, value = "select u from users u where u.email = :email")
    Optional<User> findByEmail(@Param("email") String email);

    @Query(nativeQuery = true, value = "select u from users u where u.name = :username")
    Optional<User> findByGitHubId(@Param("username") String username);
}
