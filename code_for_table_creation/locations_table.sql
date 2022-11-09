CREATE TABLE locations (
    id SERIAL,
    location_ VARCHAR NOT NULL UNIQUE,
    CONSTRAINT locations_pkey PRIMARY KEY (id)
);