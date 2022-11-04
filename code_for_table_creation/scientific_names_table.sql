CREATE TABLE scientific_names (
    scientific_name_id SERIAL,
    scientific_name VARCHAR NOT NULL UNIQUE,
    CONSTRAINT scientific_names_pkey PRIMARY KEY (scientific_name_id)
);