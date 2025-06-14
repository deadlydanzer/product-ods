-- PRODUCT DETAIL TABLE

DROP TABLE IF EXISTS PRODUCT_DETAIL
;

CREATE TABLE PRODUCT_DETAIL (
     PD_ID            BIGSERIAL                     NOT NULL
    ,PD_NAME          VARCHAR                       NOT NULL
    ,PD_TYPE          VARCHAR                       NOT NULL
    ,PD_CATEGORY      VARCHAR                       NULL
    ,PD_DESC          TEXT                          NULL
    ,PD_PRICE         NUMERIC(10,2)                 NULL
    ,PD_SOURCE_ID     BIGINT                        NULL
    ,PD_CREATED_BY    VARCHAR                       NOT NULL
    ,PD_CREATED_TS    TIMESTAMP WITHOUT TIME ZONE   NOT NULL    DEFAULT NOW()
    ,PD_MODIFIED_TS   TIMESTAMP WITHOUT TIME ZONE   NULL
    ,PD_STATUS        VARCHAR                       NOT NULL    DEFAULT 'ACTIVE'
    ,PRIMARY KEY (PD_ID)
    ,UNIQUE (PD_ID, PD_SOURCE_ID)
);