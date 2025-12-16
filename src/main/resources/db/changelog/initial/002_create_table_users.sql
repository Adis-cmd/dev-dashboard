-- changelog Adis: 002 create user table
CREATE TABLE users (
    id BIGSERIAL  PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL ,
    enabled BOOLEAN DEFAULT TRUE,
    github_id BIGINT UNIQUE,
    login VARCHAR(255) UNIQUE,
    name VARCHAR(255),
    avatar_url VARCHAR(255),
    bio TEXT,
    readme TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_repos INT DEFAULT 0,
    total_commits INT DEFAULT 0,
    total_stars INT DEFAULT 0,
    total_followers INT DEFAULT 0,
    total_following INT DEFAULT 0,
    is_email_verified BOOLEAN DEFAULT FALSE,
    authorities_id BIGINT,
    CONSTRAINT FK_USER_AUTHORITIES
        FOREIGN KEY (authorities_id)
        REFERENCES AUTHORITIES (id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);
