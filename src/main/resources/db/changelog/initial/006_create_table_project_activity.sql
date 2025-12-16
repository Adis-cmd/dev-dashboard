-- changelog Adis: 006 create project_activity table
CREATE TABLE project_activity (
    id BIGSERIAL  PRIMARY KEY,
    project_id BIGINT NOT NULL,
    user_id BIGINT NOT NULL,
    date DATE NOT NULL,
    commits INT DEFAULT 0,
    CONSTRAINT FK_PROJECT_ACTIVITY_PROJECT
        FOREIGN KEY (project_id)
        REFERENCES projects(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT FK_PROJECT_ACTIVITY_USER
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
