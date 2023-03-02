#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

TRUNCATERESULT=$($PSQL "truncate table teams, games")
echo

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WG OG
do
if [[ $YEAR != "year" ]]
then

# get team id
OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

  if [[ -z $OPPONENT_ID ]]

  then

# insert

INSERT_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")

if [[ INSERT_OPPONENT == "INSERT 0 1" ]]

then

echo Inserted into teams, $OPPONENT

fi

# new opponent

OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

fi

# get winner

WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'") 

if [[ -z $WINNER_ID ]]

then

#insert

INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")

if [[ INSERT_WINNER == "INSERT 0 1" ]]

then

echo Inserted into teams, $WINNER

fi

# new winner

WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'") 

fi
 
echo $($PSQL"INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WG, $OG)")
fi


done
