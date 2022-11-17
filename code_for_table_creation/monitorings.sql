CREATE TABLE monitorings (
    id SERIAL,
    monitoring_date TIMESTAMP,
    height FLOAT,
    diameter FLOAT,
    plant_id INTEGER,
    CONSTRAINT monitorings_pkey PRIMARY KEY (id),

    CONSTRAINT monitorings_plants_fkey FOREIGN KEY (plant_id) 
    REFERENCES plants (id) MATCH SIMPLE ON UPDATE CASCADE ON DELETE CASCADE

    
);