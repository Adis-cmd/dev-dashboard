-- changelog Adis: 007 create collaborator table
CREATE TABLE collaborators (
    id BIGSERIAL  PRIMARY KEY,
    project_id BIGINT NOT NULL,
    user_id BIGINT,
    login VARCHAR(255),
    avatar_url VARCHAR(255),
    contributions INT DEFAULT 0,
    CONSTRAINT FK_COLLAB_PROJECT
        FOREIGN KEY (project_id)
        REFERENCES projects(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT FK_COLLAB_USER
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);
