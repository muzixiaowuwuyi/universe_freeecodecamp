#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
$PSQL "TRUNCATE TABLE teams CASCADE"
$PSQL "TRUNCATE TABLE games"

$PSQL "DROP TABLE games_temp"
$PSQL "CREATE TABLE games_temp (
year integer NOT NULL,
round varchar(50) NOT NULL,
winner varchar(50) NOT NULL,
opponent varchar(50) NOT NULL,
winner_goals integer NOT NULL,
opponent_goals integer NOT NULL)"

cat games.csv | $PSQL "COPY games_temp FROM STDIN DELIMITER ',' CSV HEADER";

$PSQL "
INSERT INTO teams (name) 
  WITH t AS (
    (SELECT winner FROM games_temp) 
    UNION 
    (SELECT opponent FROM games_temp)
  ) SELECT DISTINCT * FROM t;"


$PSQL "
INSERT INTO games (year, round, winner_id, opponent_id, winner_goals, opponent_goals)
      WITH results AS (
        WITH opponent_id_table AS
        (
          WITH winner_id_table AS (
              select * from games_temp left join teams on games_temp.winner = teams.name
          )
          SELECT year, round, team_id AS winner_id, opponent, winner_goals, opponent_goals from winner_id_table
        )
        SELECT * from opponent_id_table LEFT JOIN teams on opponent_id_table.opponent = teams.name
      )
      SELECT year, round, winner_id, team_id AS opponent_id, winner_goals, opponent_goals FROM results
"

