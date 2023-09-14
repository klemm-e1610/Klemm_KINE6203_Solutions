%% Tic Tac Toe Assignment 2 Details

% Name: Elizabeth Klemm
% Due Date: Spetember 21, 2023
% Code Description: This code allows a user to play tic tac toe against the
% computer using primarily a for loop. The user is asked if they want to
% play Tic Tac Toe. As long as they have said yes, they will continue to
% play games against the computer. Moves are generated using a for loop for
% moves 1:10 based on there being 9 spots on the board, and a 10th loop is
% used to check for a tie game. The user plays first followed by the
% computer's move. The number of player wins, losses, and ties is stored. 
%
% Tested using MATLAB 2023a
% Tested and developed on Macbook Air M2

% Last updated: 9/14/2023
%% Tic Tac Toe Code
disp("Hello! Welcome to Tic Tac Toe") % display welcome message
play_prompt = "Would you like to play a game? Type yes or no and press enter: "; %sentence to ask user if they want to play
user_play = input(play_prompt,'s'); % ask user if they want to play
user_play = convertCharsToStrings(user_play); %make the user's input a string instead of characters

numWins=0; %number of player wins
numLosses=0; % number of player losses
numTies=0; % number of player ties


while user_play == "yes" | user_play == "Yes" | user_play == "YES" % as long as the user has said "yes" to playing tic tac toe, play tic tac toe
    game_board = ["spot 1" "spot 2" "spot 3" ; "spot 4" "spot 5" "spot 6"; "spot 7" "spot 8" "spot 9"]; % 3x3 matrix that becomes the gameboard
    disp (game_board) % display the gameboard

    player_move=0; % number of moves player has made
    computer_move = 0; % number of moves computer has made
    move=1; % number of moves total; these values reset before every new game

    for move=1:2:11     % there are 9 available moves. Each time the loop runs, both the user and computer move. Additionally, if there is a tie, it is necessary for the loop to run a 10th time to check for that tie and break out of loop -since the index increases by 2 for each loop, it was necessary to have the loop go up to 11
        if isequaln(game_board(1,1),game_board(1,2),game_board(1,3),"o") || isequaln(game_board(1,1),game_board(2,1),game_board(3,1),"o") || isequaln(game_board(1,1), game_board(2,2), game_board(3,3),"o") || isequaln(game_board(1,2), game_board(2,2), game_board(3,2), "o") || isequaln(game_board(1,3), game_board(2,3), game_board(3,3), "o") || isequaln(game_board(3,1), game_board(2,2), game_board(1,3), "o") || isequaln(game_board(2,1), game_board(2,2), game_board(2,3), "o") || isequaln(game_board(3,1), game_board(3,2), game_board(3,3), "o")
            disp("Uh oh. You lose :(") % if there are 3 o's in a row on the board, display "Uh oh. You lose :( "
            numLosses=numLosses+1; % increase the number of player losses
            break   % if there are 3 o's in a row, quit the game, and the computer won
        elseif  isequaln(game_board(1,1),game_board(1,2),game_board(1,3),"x") || isequaln(game_board(1,1),game_board(2,1),game_board(3,1),"x") || isequaln(game_board(1,1), game_board(2,2), game_board(3,3),"x") || isequaln(game_board(1,2), game_board(2,2), game_board(3,2), "x") || isequaln(game_board(1,3), game_board(2,3), game_board(3,3), "x") || isequaln(game_board(3,1), game_board(2,2), game_board(1,3), "x") || isequaln(game_board(2,1), game_board(2,2), game_board(2,3), "x") || isequaln(game_board(3,1), game_board(3,2), game_board(3,3), "x")
            disp("Congrats! You win!") % if there are, display "Congrats! You win!"
            numWins=numWins+1; % if player won, increase number of wins by 1
            break   % if there are 3 x's in a row, quit the game, and the user won
        elseif ~contains (game_board(1,1), "spot") & ~contains (game_board(1,2), "spot") & ~contains (game_board(1,3), "spot") & ~contains (game_board(2,1), "spot") & ~contains (game_board(2,2), "spot") & ~contains (game_board(2,3), "spot") & ~contains (game_board(3,1), "spot") & ~contains (game_board(3,2), "spot") & ~contains (game_board(3,3), "spot")
            disp("It's a tie! Game over.")  % if all the spots have been played, and neither player has 3 in a row, quit the game
            numTies=numTies+1;  % add to number of tie games
            break

        else    %the game is not over, play tic tac toe
            while player_move - computer_move == 1 % the computer will move if it has moved one less time than the player
                if isequaln(game_board(1,1),game_board(1,2),game_board(1,3),"x") || isequaln(game_board(1,1),game_board(2,1),game_board(3,1),"x") || isequaln(game_board(1,1), game_board(2,2), game_board(3,3),"x") || isequaln(game_board(1,2), game_board(2,2), game_board(3,2), "x") || isequaln(game_board(1,3), game_board(2,3), game_board(3,3), "x") || isequaln(game_board(3,1), game_board(2,2), game_board(1,3), "x") || isequaln(game_board(2,1), game_board(2,2), game_board(2,3), "x") || isequaln(game_board(3,1), game_board(3,2), game_board(3,3), "x")
                    % check if there are 3 x's in a row at any place on the
                    % board
                    % disp("Congrats! You win!") % if there are, display "Congrats! You win!"
                    % numWins=numWins+1; % if player won, increase number of wins by 1
                    break % break out of the while loop
                end

                computer_move_location = randi(9); % computer move is based off a random move generator from 1-9
                switch (computer_move_location) % switch case to determine what to do with the computer's move location
                    case 1 %if computer move = 1, change spot 1 on the gameboard to a o
                        if contains(game_board(1,1),"spot")
                            game_board(1,1) = "o";
                            computer_move = computer_move+1; %number of computer moves is increased by 1
                            disp(game_board) %show the game board
                           
                        end
                    case 2 %same thing but spot 2
                        if contains(game_board(1,2),"spot")
                            game_board(1,2) = "o";
                            computer_move = computer_move+1;
                            disp(game_board)
                        
                        end
                    case 3
                        if contains(game_board(1,3),"spot")
                            game_board(1,3) = "o";
                            computer_move = computer_move+1;
                            disp(game_board)
                           
                        end
                    case 4
                        if contains(game_board(2,1),"spot")
                            game_board(2,1) = "o";
                            computer_move = computer_move+1;
                            disp(game_board)
                          
                        end
                    case 5
                        if contains(game_board(2,2),"spot")
                            game_board(2,2) = "o";
                            computer_move = computer_move+1;
                            disp(game_board)
                           
                        end
                    case 6
                        if contains(game_board(2,3),"spot")
                            game_board(2,3) = "o";
                            computer_move = computer_move+1;
                            disp(game_board)
                          
                        end
                    case 7
                        if contains(game_board(3,1),"spot")
                            game_board(3,1) = "o";
                            computer_move = computer_move+1;
                            disp(game_board)
                         
                        end
                    case 8
                        if contains(game_board(3,2),"spot")
                            game_board(3,2) = "o";
                            computer_move = computer_move+1;
                            disp(game_board)
                         
                        end
                    case 9
                        if contains(game_board(3,3),"spot")
                            game_board(3,3) = "o";
                            computer_move = computer_move+1;
                            disp(game_board)
                            
                        end
                end
            end

            while player_move == computer_move %when the computer and player have moved an equal amount of times, the player will move again
                if isequaln(game_board(1,1),game_board(1,2),game_board(1,3),"o") || isequaln(game_board(1,1),game_board(2,1),game_board(3,1),"o") || isequaln(game_board(1,1), game_board(2,2), game_board(3,3),"o") || isequaln(game_board(1,2), game_board(2,2), game_board(3,2), "o") || isequaln(game_board(1,3), game_board(2,3), game_board(3,3), "o") || isequaln(game_board(3,1), game_board(2,2), game_board(1,3), "o") || isequaln(game_board(2,1), game_board(2,2), game_board(2,3), "o") || isequaln(game_board(3,1), game_board(3,2), game_board(3,3), "o") 
                    break % break out of the player move while statement for player move if the computer has won
                end

                move_prompt = "What spot would you like to go in? Type the spot number and press enter: "; %statement asking player where they would like to move
                user_move = input(move_prompt, 's'); % prompt the user to enter a move with the above statement. Player's chosen move is stored in this variable
                switch (user_move) % switch case to determine what to do with user's chosen move
                    case '1' % if user chose spot 1, put an x in the spot if the spot has not been taken 
                        if contains(game_board(1,1),"spot")
                            game_board(1,1) = "x";
                            player_move = player_move+1; % add one to the number of player moves
                            disp(game_board) % show the gameboard
                         
                        else
                            disp('This spot has already been played. Please choose another spot') % if the player's chosen spot has already been played, ask the user to choose another spot
                        end
                    case '2' %same thing if user chose spot 2
                        if contains(game_board(1,2),"spot")
                            game_board(1,2) = "x";
                            player_move = player_move+1;
                            disp(game_board)
                          
                        else
                            disp('This spot has already been played. Please choose another spot')
                        end
                    case '3'
                        if contains(game_board(1,3),"spot")
                            game_board(1,3) = "x";
                            player_move = player_move+1;
                            disp(game_board)
                         
                        else
                            disp('This spot has already been played. Please choose another spot')
                        end
                    case '4'
                        if contains(game_board(2,1),"spot")
                            game_board(2,1) = "x";
                            player_move = player_move+1;
                            disp(game_board)
                           
                        else
                            disp('This spot has already been played. Please choose another spot')
                        end
                    case '5'
                        if contains(game_board(2,2),"spot")
                            game_board(2,2) = "x";
                            player_move = player_move+1;
                            disp(game_board)
                           
                        else
                            disp('This spot has already been played. Please choose another spot')
                        end
                    case '6'
                        if contains(game_board(2,3),"spot")
                            game_board(2,3) = "x";
                            player_move = player_move+1;
                            disp(game_board)
                          
                        else
                            disp('This spot has already been played. Please choose another spot')
                        end
                    case '7'
                        if contains(game_board(3,1),"spot")
                            game_board(3,1) = "x";
                            player_move = player_move+1;
                            disp(game_board)
                           
                        else
                            disp('This spot has already been played. Please choose another spot')
                        end
                    case '8'
                        if contains(game_board(3,2),"spot")
                            game_board(3,2) = "x";
                            player_move = player_move+1;
                            disp(game_board)

                        else
                            disp('This spot has already been played. Please choose another spot')
                        end
                    case '9'
                        if contains(game_board(3,3),"spot")
                            game_board(3,3) = "x";
                            player_move = player_move+1;
                            disp(game_board)
                           
                        else
                            disp('This spot has already been played. Please choose another spot')
                        end
                end
            end

        end
    end

play_prompt = "Would you like to play again? Type yes or no and press enter: "; % ask the user if they would like to play again
user_play = input(play_prompt,'s'); % prompt user if they want to play again; their answer lives in this variable
user_play = convertCharsToStrings(user_play); %convert user's answer into a string


end

FinalMessage = fprintf("Thank you for playing Tic Tac Toe! You won " + numWins + " games, lost " + numLosses + " games, and tied " + numTies + " games. Have a splendid day!" ); %After the user is done playing, display a final message which includes the total number of wins, losses, and ties
