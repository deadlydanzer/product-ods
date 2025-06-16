-- PRODUCT_SOURCE_TABLE

DROP TABLE IF EXISTS PRODUCT_SOURCE
;

CREATE TABLE PRODUCT_SOURCE(
    PS_ID           BIGSERIAL                    NOT NULL,
    PD_ID           BIGINT                       NOT NULL,
    PS_1            VARCHAR                      NULL,
    PS_1_LINK       VARCHAR                      NULL,
    PS_2            VARCHAR                      NULL,
    PS_2_LINK       VARCHAR                      NULL,
    PS_3            VARCHAR                      NULL,
    PS_3_LINK       VARCHAR                      NULL,
    PS_CREATED_BY   VARCHAR                      NOT NULL,
    PS_CREATED_TS   TIMESTAMP WITHOUT TIME ZONE  NOT NULL    DEFAULT NOW(),
    PS_MODIFIED_TS  TIMESTAMP WITHOUT TIME ZONE  NULL,
    PRIMARY KEY(PS_ID)
    UNIQUE(PD_ID)
    FOREIGN KEY(PD_ID) REFERENCES PRODUCT_DETAIL(PD_ID)
);