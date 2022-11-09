CREATE TABLE scientific_names (
    id SERIAL,
    scientific_name VARCHAR NOT NULL UNIQUE,
    CONSTRAINT scientific_names_pkey PRIMARY KEY (id)
);