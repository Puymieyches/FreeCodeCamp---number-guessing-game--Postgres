#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

NUMBER_GUESSING_GAME() {
  # Create Random Number
  RANDOM_NUMBER=$(( (RANDOM % 1000) + 1 ))

  # Ask user for username
  echo Enter your username:
  read USERNAME_INPUT

  # Check for username in database
  USERNAME=$($PSQL "SELECT username FROM users WHERE username = '$USERNAME_INPUT';")
  if [[ -z $USERNAME ]]
  then
    # Welcome message + add user to database, users table
    echo Welcome, $USERNAME_INPUT! It looks like this is your first time here.
    $PSQL "INSERT INTO users(username) VALUES('$USERNAME_INPUT');" > /dev/null
    USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME_INPUT';")
  else
    # Get user_id, games_played, best_game
    USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME';")
    GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games WHERE user_id = $USER_ID;")
    BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games WHERE user_id = $USER_ID;")
    # Welcome message
    echo Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.
  fi

  # Initialize guess counter
  GUESS_COUNT=0

  echo Guess the secret number between 1 and 1000:

  # Number guess function
  GUESS_NUMBER() {
    read USER_GUESS
  }

  while true
  do
    GUESS_NUMBER
    # Check if NaN
    if [[ ! $USER_GUESS =~ ^[0-9]+$ ]]
    then
      echo That is not an integer, guess again:
      continue
    fi

    # Increase count
    GUESS_COUNT=$(( $GUESS_COUNT + 1 ))

    # Compare guess vs random number
    if [[ $USER_GUESS -gt $RANDOM_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
    elif [[ $USER_GUESS -lt $RANDOM_NUMBER ]]
    then
      echo "It's higher than that, guess again:"
    else
      echo You guessed it in $GUESS_COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!
      $PSQL "INSERT INTO games(user_id, secret_number, number_of_guesses) VALUES($USER_ID, $RANDOM_NUMBER, $GUESS_COUNT)" > /dev/null
      break
    fi
  done
}
NUMBER_GUESSING_GAME
