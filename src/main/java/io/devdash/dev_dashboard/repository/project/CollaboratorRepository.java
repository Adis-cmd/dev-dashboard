package io.devdash.dev_dashboard.repository.project;

import io.devdash.dev_dashboard.entity.project.Collaborator;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CollaboratorRepository extends JpaRepository<Collaborator, Long> {
}
