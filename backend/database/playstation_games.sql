CREATE TABLE games (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    genre VARCHAR(100),
    release_year INT,
    description TEXT
);

INSERT INTO games (title, genre, release_year, description) VALUES
('God of War Ragnarok', 'Action', 2022, 'Kratos and Atreus journey through Norse realms.'),
('Spider-Man 2', 'Adventure', 2023, 'Peter Parker and Miles Morales team up.'),
('Horizon Forbidden West', 'RPG', 2022, 'Aloy explores new lands and faces deadly machines.');
