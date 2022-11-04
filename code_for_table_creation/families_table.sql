CREATE TABLE families (
    family_id SERIAL,
    family VARCHAR NOT NULL UNIQUE,
    CONSTRAINT families_pkey PRIMARY KEY (family_id)
);