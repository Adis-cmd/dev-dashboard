package io.devdash.dev_dashboard.entity.project;

import io.devdash.dev_dashboard.entity.user.User;
import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.FieldDefaults;

import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "projects")
@Entity
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Project {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    Long id;

    @Column(name = "github_id")
    Long gitHubId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    User userId;

    @Column(name = "name")
    String name;

    @Column(name = "url")
    String url;

    @Column(name = "description")
    String description;

    @Column(name = "updated_at")
    LocalDateTime updatedAt;

    @Column(name = "last_push")
    LocalDateTime lastPush;

    @Column(name = "stacks")
    String stacks;

    @Column(name = "stars")
    Integer stars;

    @Column(name = "forks")
    Integer forks;


    @Column(name = "watchers")
    Integer watchers;

    @Column(name = "views")
    Integer views;

    @Column(name = "commits")
    Integer commits;


}
