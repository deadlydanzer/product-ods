--CREATE USER TABLE

CREATE TABLE USER(
    USER_ID             BIGSERIAL         NOT NULL,
    USER_NAME           VARCHAR           NOT NULL,
    USER_EMAIL          VARCHAR           NOT NULL,
    USER_PASSWORD       TEXT              NOT NULL,
    USER_ROLE           VARCHAR           NOT NULL,
    USER_ACCESS         VARCHAR           NOT NULL,
    USER_STATUS         VARCHAR           NOT NULL,
    PRIMARY KEY (USER_ID)
);