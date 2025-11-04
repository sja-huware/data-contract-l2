-- Inserimento dati di esempio

-- Inserimento personaggi di Futurama
INSERT INTO cartoons.futurama (name, species, occupation, age, planet_of_origin, first_appearance_year, is_main_character) VALUES
('Philip J. Fry', 'Human', 'Delivery Boy', 1025, 'Earth', 1999, true),
('Turanga Leela', 'Mutant', 'Captain', 29, 'Earth', 1999, true),
('Bender Bending Rodriguez', 'Robot', 'Bender', 4, 'Earth', 1999, true),
('Professor Hubert J. Farnsworth', 'Human', 'Scientist/CEO', 160, 'Earth', 1999, true),
('Amy Wong', 'Human', 'Intern/Engineer', 26, 'Mars', 1999, true),
('Hermes Conrad', 'Human', 'Bureaucrat', 40, 'Earth', 1999, true),
('Doctor John Zoidberg', 'Decapodian', 'Doctor', 58, 'Decapod 10', 1999, true),
('Zapp Brannigan', 'Human', 'Captain', 45, 'Earth', 1999, false),
('Kif Kroker', 'Amphibiosan', 'Lieutenant', 30, 'Amphibios 9', 1999, false),
('Calculon', 'Robot', 'Actor', 90, 'Earth', 2000, false);

-- Inserimento personaggi dei Simpson
INSERT INTO cartoons.simpsons (name, role, age, occupation, family_member, first_appearance_year, catchphrase) VALUES
('Homer Simpson', 'Father', 39, 'Nuclear Safety Inspector', true, 1989, 'D''oh!'),
('Marge Simpson', 'Mother', 36, 'Homemaker', true, 1989, 'Hmmmm...'),
('Bart Simpson', 'Son', 10, 'Student', true, 1989, 'Eat my shorts!'),
('Lisa Simpson', 'Daughter', 8, 'Student', true, 1989, 'If anyone wants me, I''ll be in my room'),
('Maggie Simpson', 'Baby', 1, 'Baby', true, 1989, NULL),
('Abraham Simpson', 'Grandfather', 83, 'Retired', true, 1989, 'I used to be with it...'),
('Montgomery Burns', 'Antagonist', 104, 'Power Plant Owner', false, 1989, 'Excellent'),
('Waylon Smithers', 'Assistant', 45, 'Executive Assistant', false, 1989, 'Sorry sir'),
('Ned Flanders', 'Neighbor', 60, 'Store Owner', false, 1990, 'Okily dokily'),
('Moe Szyslak', 'Bartender', 58, 'Bar Owner', false, 1989, 'What''s the matter, Homer?'),
('Barney Gumble', 'Friend', 40, 'Unemployed', false, 1989, '*burp*'),
('Apu Nahasapeemapetilon', 'Shopkeeper', 42, 'Kwik-E-Mart Owner', false, 1990, 'Thank you, come again'),
('Chief Clancy Wiggum', 'Police Chief', 43, 'Police Chief', false, 1989, 'Bake him away, toys'),
('Krusty the Clown', 'Entertainer', 52, 'TV Clown', false, 1989, 'Hey hey kids!'),
('Sideshow Bob', 'Villain', 45, 'Criminal', false, 1990, NULL),
('Milhouse Van Houten', 'Friend', 10, 'Student', false, 1989, 'Everything''s coming up Milhouse!'),
('Nelson Muntz', 'Bully', 12, 'Student', false, 1989, 'Ha-ha!'),
('Ralph Wiggum', 'Classmate', 8, 'Student', false, 1991, 'I''m in danger!'),
('Groundskeeper Willie', 'Janitor', 55, 'School Groundskeeper', false, 1991, 'Grease me up, woman!'),
('Principal Skinner', 'Principal', 44, 'School Principal', false, 1989, 'Superintendent Chalmers!');