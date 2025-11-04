
-- Script di inizializzazione database. Crea schema e tabelle.

CREATE SCHEMA IF NOT EXISTS cartoons;

-- Tabella personaggi di Futurama
CREATE TABLE cartoons.futurama (
    character_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    species VARCHAR(50) NOT NULL,
    occupation VARCHAR(100),
    age INTEGER,
    planet_of_origin VARCHAR(100),
    first_appearance_year INTEGER,
    is_main_character BOOLEAN DEFAULT false
);

-- Tabella personaggi dei Simpson
CREATE TABLE cartoons.simpsons (
    character_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    role VARCHAR(100),
    age INTEGER,
    occupation VARCHAR(100),
    family_member BOOLEAN DEFAULT false,
    first_appearance_year INTEGER,
    catchphrase VARCHAR(255)
);

COMMENT ON TABLE cartoons.futurama IS 'Personaggi della serie Futurama';
COMMENT ON TABLE cartoons.simpsons IS 'Personaggi della serie I Simpson';