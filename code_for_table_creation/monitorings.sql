CREATE TABLE monitorings (
    id SERIAL,
    monitoring_date DATETIME,
    height INTEGER,
    diameter FLOAT,
    CONSTRAINT monitorings_pkey PRIMARY KEY (id),

    CONSTRAINT monitorings_plants_fkey FOREIGN KEY (plant_id) 
    REFERENCES plants (id) MATCH SIMPLE ON UPDATE CASCADE ON DELETE CASCADE,

    
);