package io.devdash.dev_dashboard.entity.project;

import io.devdash.dev_dashboard.entity.user.User;
import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.FieldDefaults;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(name = "collaborators")
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Collaborator {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "project_id", nullable = false)
    Project project;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    User user;

    @Column(name = "login")
    String login;

    @Column(name = "avatar_url")
    String avatarUrl;

    @Column(name = "contributions")
    Integer contributions;
}
