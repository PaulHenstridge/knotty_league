
DROP TABLE IF EXISTS matches;
DROP TABLE IF EXISTS teams;

CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    attack INT,
    defence INT,
    matches_played INT,
    wins INT
);

CREATE TABLE matches (
    id SERIAL PRIMARY KEY,
    team1_id INT NOT NULL REFERENCES teams(id) ON DELETE CASCADE,
    team2_id INT NOT NULL REFERENCES teams(id) ON DELETE CASCADE,
    completed BOOLEAN,
    winner_id INT
);

INSERT INTO teams (name, attack, defence, matches_played, wins) 
VALUES ('Lybster', 75, 25, 1, 1);

INSERT INTO teams (name, attack, defence, matches_played, wins) 
VALUES ('Dunbeath', 55, 85, 1, 0);

INSERT INTO teams (name, attack, defence, matches_played, wins) 
VALUES ('Kiess', 45, 55, 0, 0);

INSERT INTO matches (team1_id, team2_id, completed, winner_id)
VALUES (1,2,'t','1')