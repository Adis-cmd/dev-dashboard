-- changelog Adis: 003 create project table
CREATE TABLE projects (
    id BIGSERIAL  PRIMARY KEY,
    github_id BIGINT,
    user_id BIGINT NOT NULL,
    name VARCHAR(255) NOT NULL,
    url VARCHAR(255) NOT NULL,
    description TEXT,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_push TIMESTAMP,
    stacks TEXT,
    stars INT DEFAULT 0,
    forks INT DEFAULT 0,
    watchers INT DEFAULT 0,
    views INT DEFAULT 0,
    commits INT DEFAULT 0,
    CONSTRAINT FK_USER_PROJECT
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
