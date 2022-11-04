CREATE TABLE origins (
    origin_id SERIAL,
    origin VARCHAR NOT NULL UNIQUE,
    CONSTRAINT origins_pkey PRIMARY KEY (origin_id)
);