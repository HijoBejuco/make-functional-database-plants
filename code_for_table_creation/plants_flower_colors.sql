CREATE TABLE plant_flower_colors (
    id SERIAL,
    plant_id INTEGER,
    color_id INTEGER,
    
    CONSTRAINT plant_flower_colors_pkey PRIMARY KEY (id),

    CONSTRAINT plant_flower_colors_plants_fkey FOREIGN KEY (plant_id) 
    REFERENCES plants (id) MATCH SIMPLE ON UPDATE CASCADE ON DELETE CASCADE,

    CONSTRAINT plant_flower_colors_flower_colors_fkey FOREIGN KEY (color_id) 
    REFERENCES flower_colors (id) MATCH SIMPLE ON UPDATE CASCADE ON DELETE CASCADE

    
);