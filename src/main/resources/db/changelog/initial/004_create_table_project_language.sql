-- changelog Adis: 004 create project_language table
CREATE TABLE project_languages (
    id BIGSERIAL  PRIMARY KEY,
    project_id BIGINT NOT NULL,
    language VARCHAR(50) NOT NULL,
    percentage FLOAT,
    CONSTRAINT FK_PROJECT_LANG
        FOREIGN KEY (project_id)
        REFERENCES projects(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
