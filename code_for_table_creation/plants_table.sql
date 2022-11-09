CREATE TABLE plants (
    id SERIAL,
    scientific_name_id INTEGER,
    family_id INTEGER,
    location_id INTEGER,
    sower_id INTEGER,
    origin_id INTEGER,
    CONSTRAINT plants_pkey PRIMARY KEY (id),

    CONSTRAINT plants_scientific_names_fkey FOREIGN KEY (scientific_name_id) 
    REFERENCES scientific_names (id) MATCH SIMPLE ON UPDATE CASCADE ON DELETE CASCADE,

    CONSTRAINT plants_families_fkey FOREIGN KEY (family_id) 
    REFERENCES families (id) MATCH SIMPLE ON UPDATE CASCADE ON DELETE CASCADE,

    CONSTRAINT plants_locations_fkey FOREIGN KEY (location_id) 
    REFERENCES locations (id) MATCH SIMPLE ON UPDATE CASCADE ON DELETE CASCADE,

    CONSTRAINT plants_sowers_fkey FOREIGN KEY (sower_id) 
    REFERENCES sowers (id) MATCH SIMPLE ON UPDATE CASCADE ON DELETE CASCADE,

    CONSTRAINT plants_origins_fkey FOREIGN KEY (origin_id) 
    REFERENCES origins (id) MATCH SIMPLE ON UPDATE CASCADE ON DELETE CASCADE
);