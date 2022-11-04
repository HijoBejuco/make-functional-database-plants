CREATE TABLE sowers (
    sower_id SERIAL,
    sower VARCHAR NOT NULL UNIQUE,
    CONSTRAINT sowers_pkey PRIMARY KEY (sower_id)
);