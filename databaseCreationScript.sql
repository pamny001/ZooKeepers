-- ================================
-- 1. HABITATS
-- ================================
CREATE TABLE Habitat (
    habitat_id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL,
    type VARCHAR(50),
    location VARCHAR(100)
);

INSERT INTO Habitat (name, type, location) VALUES
('Savannah Exhibit', 'Grassland', 'Zone A'),
('Rainforest Dome', 'Tropical', 'Zone B'),
('Reptile House', 'Desert', 'Zone C'),
('Penguin Bay', 'Aquarium', 'Zone D'),
('Bird Aviary', 'Aviary', 'Zone E');

-- ================================
-- 2. ANIMALS
-- ================================
CREATE TABLE Animal (
    animal_id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL,
    species VARCHAR(100) NOT NULL,
    age INT,
    gender VARCHAR(10),
    habitat_id INT FOREIGN KEY REFERENCES Habitat(habitat_id)
);

INSERT INTO Animal (name, species, age, gender, habitat_id) VALUES
('Leo', 'African Lion', 7, 'Male', 1),
('Nala', 'African Lion', 6, 'Female', 1),
('Kiki', 'Capuchin Monkey', 3, 'Female', 2),
('Rango', 'Chameleon', 2, 'Male', 3),
('Pebbles', 'Penguin', 4, 'Female', 4),
('Waddle', 'Penguin', 5, 'Male', 4),
('Sky', 'Macaw Parrot', 8, 'Female', 5);

-- ================================
-- 3. SHOWCASE EVENTS
-- ================================
CREATE TABLE Showcase_Event (
    event_id INT PRIMARY KEY IDENTITY(1,1),
    title VARCHAR(100) NOT NULL,
    event_date DATE NOT NULL,
    location VARCHAR(100),
    description TEXT
);

INSERT INTO Showcase_Event (title, event_date, location, description) VALUES
('Big Cats Feeding Show', '2025-09-05', 'Savannah Exhibit', 'Watch lions during their daily feeding.'),
('Rainforest Monkey Tricks', '2025-09-07', 'Rainforest Dome', 'Capuchins show off their agility.'),
('Penguin Parade', '2025-09-10', 'Penguin Bay', 'Penguins march for the audience.'),
('Bird Talk with Macaws', '2025-09-12', 'Bird Aviary', 'Macaws demonstrate their talking skills.');

-- ================================
-- 4. ANIMAL SHOWCASE LINK
-- ================================
CREATE TABLE Animal_Showcase (
    animal_id INT FOREIGN KEY REFERENCES Animal(animal_id),
    event_id INT FOREIGN KEY REFERENCES Showcase_Event(event_id),
    role VARCHAR(50),
    PRIMARY KEY (animal_id, event_id)
);

INSERT INTO Animal_Showcase (animal_id, event_id, role) VALUES
(1, 1, 'Main Exhibit'),
(2, 1, 'Supporting Exhibit'),
(3, 2, 'Performer'),
(5, 3, 'Leader'),
(6, 3, 'Performer'),
(7, 4, 'Speaker');

-- ================================
-- 5. KEEPERS
-- ================================
CREATE TABLE Keeper (
    keeper_id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(50),
    contact_info VARCHAR(150)
);

INSERT INTO Keeper (name, specialization, contact_info) VALUES
('Alice Johnson', 'Big Cats', 'alice@zoo.com'),
('Ben Smith', 'Primates', 'ben@zoo.com'),
('Clara Green', 'Birds', 'clara@zoo.com'),
('David Brown', 'Reptiles', 'david@zoo.com'),
('Ella White', 'Aquatic Animals', 'ella@zoo.com');

-- ================================
-- 6. KEEPER ASSIGNMENTS
-- ================================
CREATE TABLE Keeper_Assignment (
    keeper_id INT FOREIGN KEY REFERENCES Keeper(keeper_id),
    animal_id INT FOREIGN KEY REFERENCES Animal(animal_id),
    assigned_date DATE,
    PRIMARY KEY (keeper_id, animal_id)
);

INSERT INTO Keeper_Assignment (keeper_id, animal_id, assigned_date) VALUES
(1, 1, '2022-05-10'),
(1, 2, '2022-05-10'),
(2, 3, '2023-01-15'),
(4, 4, '2023-03-20'),
(5, 5, '2021-07-12'),
(5, 6, '2021-07-12'),
(3, 7, '2020-09-01');
