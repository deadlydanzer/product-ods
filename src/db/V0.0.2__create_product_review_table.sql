-- Product Review Table 

DROP TABLE IF EXISTS product_review;

CREATE TABLE PRODUCT_REVIEW(

    PR_ID            BIGINT                          NOT NULL,
    PR_TYPE          VARCHAR                         NOT NULL,
    PR_DESC          TEXT                            NULL,
    PR_CREATED_BY    VARCHAR                         NOT NULL,
    PR_CREATED_TS    TIMESTAMP WITHOUT TIME ZONE     NOT NULL,
    PR_MODIFIED_TS   TIMESTAMP WITHOUT TIME ZONE     NULL,
    PR_STATUS        VARCHAR                         NOT NULL
    PRIMARY KEY(PR_ID)
)