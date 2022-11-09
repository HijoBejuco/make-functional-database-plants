CREATE TABLE origins (
    id SERIAL,
    origin VARCHAR NOT NULL UNIQUE,
    CONSTRAINT origins_pkey PRIMARY KEY (id)
);