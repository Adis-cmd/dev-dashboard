package io.devdash.dev_dashboard.repository.user;

import io.devdash.dev_dashboard.entity.user.Authority;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Optional;

public interface AuthorityRepository extends JpaRepository<Authority, Long> {

    @Query("SELECT a FROM Authority a WHERE a.name = :name")
    Optional<Authority> findAuthorityByName(@Param("name") String name);
}
