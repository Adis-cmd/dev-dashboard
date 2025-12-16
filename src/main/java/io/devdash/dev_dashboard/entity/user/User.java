package io.devdash.dev_dashboard.entity.user;

import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.FieldDefaults;

import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    Long id;

    @Column(name = "github_id")
    Long gitHubId;

    @Column(name = "name")
    String name;

    @Column(name = "login")
    String login;

    @Column(name = "avatar_url")
    String avatarUrl;

    @Column(name = "bio")
    String bio;

    @Column(name = "readme")
    String readMe;

    @Column(name = "created_at")
    LocalDateTime createdAt;

    @Column(name = "total_repos")
    Integer totalRepos;

    @Column(name = "total_commits")
    Integer totalCommits;

    @Column(name = "total_stars")
    Integer totalStars;

    @Column(name = "total_followers")
    Integer totalFollowers;

    @Column(name = "total_following")
    Integer totalFollowing;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "authorities_id", referencedColumnName = "id")
    Authority authority;

    @Column(name = "email")
    String email;

    @Column(name = "enabled")
    Boolean enabled;

    @Column(name = "password")
    String password;

}
