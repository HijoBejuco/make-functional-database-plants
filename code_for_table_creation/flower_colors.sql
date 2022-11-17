CREATE TABLE flower_colors (
    id SERIAL,
    color VARCHAR NOT NULL UNIQUE,
    CONSTRAINT flower_colors_pkey PRIMARY KEY (id)
   
);