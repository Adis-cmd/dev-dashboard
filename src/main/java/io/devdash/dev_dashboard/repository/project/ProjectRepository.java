package io.devdash.dev_dashboard.repository.project;

import io.devdash.dev_dashboard.entity.project.Project;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProjectRepository extends JpaRepository<Project, Long> {
}
