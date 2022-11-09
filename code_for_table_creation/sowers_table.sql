CREATE TABLE sowers (
    id SERIAL,
    sower VARCHAR NOT NULL UNIQUE,
    CONSTRAINT sowers_pkey PRIMARY KEY (id)
);