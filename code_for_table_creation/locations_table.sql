CREATE TABLE locations (
    location_id SERIAL,
    location_ VARCHAR NOT NULL UNIQUE,
    CONSTRAINT locations_pkey PRIMARY KEY (location_id)
);