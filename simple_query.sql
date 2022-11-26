SELECT plants.id, scientific_name, family  FROM plants 
INNER JOIN scientific_names ON plants.scientific_name_id = scientific_names.id 
INNER JOIN families ON plants.family_id = families.id;