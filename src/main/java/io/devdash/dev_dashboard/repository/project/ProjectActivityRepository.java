package io.devdash.dev_dashboard.repository.project;

import io.devdash.dev_dashboard.entity.project.ProjectActivity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProjectActivityRepository extends JpaRepository<ProjectActivity, Long> {
}
