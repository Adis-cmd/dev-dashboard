-- changelog Adis: 005 create user_activity table
CREATE TABLE user_activity (
    id BIGSERIAL  PRIMARY KEY,
    user_id BIGINT NOT NULL,
    date DATE NOT NULL,
    commits INT DEFAULT 0,
    CONSTRAINT FK_USER_ACTIVITY
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
