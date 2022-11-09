CREATE TABLE families (
    id SERIAL,
    family VARCHAR NOT NULL UNIQUE,
    CONSTRAINT families_pkey PRIMARY KEY (id)
);