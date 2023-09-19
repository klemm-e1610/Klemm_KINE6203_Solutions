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
playPrompt = "Would you like to play a game? Type yes or no and press enter: "; %sentence to ask user if they want to play
userPlay = input(playPrompt,'s'); % ask user if they want to play
userPlay = convertCharsToStrings(userPlay); %make the user's input a string instead of characters

numWins=0; %number of player wins
numLosses=0; % number of player losses
numTies=0; % number of player ties


while userPlay == "yes" | userPlay == "Yes" | userPlay == "YES" % as long as the user has said "yes" to playing tic tac toe, play tic tac toe
    gameBoard = ["spot 1" "spot 2" "spot 3" ; "spot 4" "spot 5" "spot 6"; "spot 7" "spot 8" "spot 9"]; % 3x3 matrix that becomes the gameboard
    disp (gameBoard) % display the gameboard

    playerMove=0; % number of moves player has made
    computerMove = 0; % number of moves computer has made
    move=1; % number of moves total; these values reset before every new game

    for move=1:2:11     % there are 9 available moves. Each time the loop runs, both the user and computer move. Additionally, if there is a tie, it is necessary for the loop to run a 10th time to check for that tie and break out of loop -since the index increases by 2 for each loop, it was necessary to have the loop go up to 11
        if isequaln(gameBoard(1,1),gameBoard(1,2),gameBoard(1,3),"o") || isequaln(gameBoard(1,1),gameBoard(2,1),gameBoard(3,1),"o") || isequaln(gameBoard(1,1), gameBoard(2,2), gameBoard(3,3),"o") || isequaln(gameBoard(1,2), gameBoard(2,2), gameBoard(3,2), "o") || isequaln(gameBoard(1,3), gameBoard(2,3), gameBoard(3,3), "o") || isequaln(gameBoard(3,1), gameBoard(2,2), gameBoard(1,3), "o") || isequaln(gameBoard(2,1), gameBoard(2,2), gameBoard(2,3), "o") || isequaln(gameBoard(3,1), gameBoard(3,2), gameBoard(3,3), "o")
            disp("Uh oh. You lose :(") % if there are 3 o's in a row on the board, display "Uh oh. You lose :( "
            numLosses=numLosses+1; % increase the number of player losses
            break   % if there are 3 o's in a row, quit the game, and the computer won
        elseif  isequaln(gameBoard(1,1),gameBoard(1,2),gameBoard(1,3),"x") || isequaln(gameBoard(1,1),gameBoard(2,1),gameBoard(3,1),"x") || isequaln(gameBoard(1,1), gameBoard(2,2), gameBoard(3,3),"x") || isequaln(gameBoard(1,2), gameBoard(2,2), gameBoard(3,2), "x") || isequaln(gameBoard(1,3), gameBoard(2,3), gameBoard(3,3), "x") || isequaln(gameBoard(3,1), gameBoard(2,2), gameBoard(1,3), "x") || isequaln(gameBoard(2,1), gameBoard(2,2), gameBoard(2,3), "x") || isequaln(gameBoard(3,1), gameBoard(3,2), gameBoard(3,3), "x")
            disp("Congrats! You win!") % if there are, display "Congrats! You win!"
            numWins=numWins+1; % if player won, increase number of wins by 1
            break   % if there are 3 x's in a row, quit the game, and the user won
        elseif ~contains (gameBoard(1,1), "spot") & ~contains (gameBoard(1,2), "spot") & ~contains (gameBoard(1,3), "spot") & ~contains (gameBoard(2,1), "spot") & ~contains (gameBoard(2,2), "spot") & ~contains (gameBoard(2,3), "spot") & ~contains (gameBoard(3,1), "spot") & ~contains (gameBoard(3,2), "spot") & ~contains (gameBoard(3,3), "spot")
            disp("It's a tie! Game over.")  % if all the spots have been played, and neither player has 3 in a row, quit the game
            numTies=numTies+1;  % add to number of tie games
            break

        else    %the game is not over, play tic tac toe
            while playerMove - computerMove == 1 % the computer will move if it has moved one less time than the player
                if isequaln(gameBoard(1,1),gameBoard(1,2),gameBoard(1,3),"x") || isequaln(gameBoard(1,1),gameBoard(2,1),gameBoard(3,1),"x") || isequaln(gameBoard(1,1), gameBoard(2,2), gameBoard(3,3),"x") || isequaln(gameBoard(1,2), gameBoard(2,2), gameBoard(3,2), "x") || isequaln(gameBoard(1,3), gameBoard(2,3), gameBoard(3,3), "x") || isequaln(gameBoard(3,1), gameBoard(2,2), gameBoard(1,3), "x") || isequaln(gameBoard(2,1), gameBoard(2,2), gameBoard(2,3), "x") || isequaln(gameBoard(3,1), gameBoard(3,2), gameBoard(3,3), "x")
                    % check if there are 3 x's in a row at any place on the
                    % board
                    break % break out of the while loop
                end

                computerMoveLocation = randi(9); % computer move is based off a random move generator from 1-9
                switch (computerMoveLocation) % switch case to determine what to do with the computer's move location
                    case 1 %if computer move = 1, change spot 1 on the gameboard to a o
                        if contains(gameBoard(1,1),"spot")
                            gameBoard(1,1) = "o";
                            computerMove = computerMove+1; %number of computer moves is increased by 1
                            disp(gameBoard) %show the game board
                           
                        end
                    case 2 %same thing but spot 2
                        if contains(gameBoard(1,2),"spot")
                            gameBoard(1,2) = "o";
                            computerMove = computerMove+1;
                            disp(gameBoard)
                        
                        end
                    case 3
                        if contains(gameBoard(1,3),"spot")
                            gameBoard(1,3) = "o";
                            computerMove = computerMove+1;
                            disp(gameBoard)
                           
                        end
                    case 4
                        if contains(gameBoard(2,1),"spot")
                            gameBoard(2,1) = "o";
                            computerMove = computerMove+1;
                            disp(gameBoard)
                          
                        end
                    case 5
                        if contains(gameBoard(2,2),"spot")
                            gameBoard(2,2) = "o";
                            computerMove = computerMove+1;
                            disp(gameBoard)
                           
                        end
                    case 6
                        if contains(gameBoard(2,3),"spot")
                            gameBoard(2,3) = "o";
                            computerMove = computerMove+1;
                            disp(gameBoard)
                          
                        end
                    case 7
                        if contains(gameBoard(3,1),"spot")
                            gameBoard(3,1) = "o";
                            computerMove = computerMove+1;
                            disp(gameBoard)
                         
                        end
                    case 8
                        if contains(gameBoard(3,2),"spot")
                            gameBoard(3,2) = "o";
                            computerMove = computerMove+1;
                            disp(gameBoard)
                         
                        end
                    case 9
                        if contains(gameBoard(3,3),"spot")
                            gameBoard(3,3) = "o";
                            computerMove = computerMove+1;
                            disp(gameBoard)
                            
                        end
                end
            end

            while playerMove == computerMove %when the computer and player have moved an equal amount of times, the player will move again
                if isequaln(gameBoard(1,1),gameBoard(1,2),gameBoard(1,3),"o") || isequaln(gameBoard(1,1),gameBoard(2,1),gameBoard(3,1),"o") || isequaln(gameBoard(1,1), gameBoard(2,2), gameBoard(3,3),"o") || isequaln(gameBoard(1,2), gameBoard(2,2), gameBoard(3,2), "o") || isequaln(gameBoard(1,3), gameBoard(2,3), gameBoard(3,3), "o") || isequaln(gameBoard(3,1), gameBoard(2,2), gameBoard(1,3), "o") || isequaln(gameBoard(2,1), gameBoard(2,2), gameBoard(2,3), "o") || isequaln(gameBoard(3,1), gameBoard(3,2), gameBoard(3,3), "o") 
                    break % break out of the player move while statement for player move if the computer has won
                end

                movePrompt = "What spot would you like to go in? Type the spot number and press enter: "; %statement asking player where they would like to move
                userMove = input(movePrompt, 's'); % prompt the user to enter a move with the above statement. Player's chosen move is stored in this variable
                switch (userMove) % switch case to determine what to do with user's chosen move
                    case '1' % if user chose spot 1, put an x in the spot if the spot has not been taken 
                        if contains(gameBoard(1,1),"spot")
                            gameBoard(1,1) = "x";
                            playerMove = playerMove+1; % add one to the number of player moves
                            disp(gameBoard) % show the gameboard
                         
                        else
                            disp('This spot has already been played. Please choose another spot') % if the player's chosen spot has already been played, ask the user to choose another spot
                        end
                    case '2' %same thing if user chose spot 2
                        if contains(gameBoard(1,2),"spot")
                            gameBoard(1,2) = "x";
                            playerMove = playerMove+1;
                            disp(gameBoard)
                          
                        else
                            disp('This spot has already been played. Please choose another spot')
                        end
                    case '3'
                        if contains(gameBoard(1,3),"spot")
                            gameBoard(1,3) = "x";
                            playerMove = playerMove+1;
                            disp(gameBoard)
                         
                        else
                            disp('This spot has already been played. Please choose another spot')
                        end
                    case '4'
                        if contains(gameBoard(2,1),"spot")
                            gameBoard(2,1) = "x";
                            playerMove = playerMove+1;
                            disp(gameBoard)
                           
                        else
                            disp('This spot has already been played. Please choose another spot')
                        end
                    case '5'
                        if contains(gameBoard(2,2),"spot")
                            gameBoard(2,2) = "x";
                            playerMove = playerMove+1;
                            disp(gameBoard)
                           
                        else
                            disp('This spot has already been played. Please choose another spot')
                        end
                    case '6'
                        if contains(gameBoard(2,3),"spot")
                            gameBoard(2,3) = "x";
                            playerMove = playerMove+1;
                            disp(gameBoard)
                          
                        else
                            disp('This spot has already been played. Please choose another spot')
                        end
                    case '7'
                        if contains(gameBoard(3,1),"spot")
                            gameBoard(3,1) = "x";
                            playerMove = playerMove+1;
                            disp(gameBoard)
                           
                        else
                            disp('This spot has already been played. Please choose another spot')
                        end
                    case '8'
                        if contains(gameBoard(3,2),"spot")
                            gameBoard(3,2) = "x";
                            playerMove = playerMove+1;
                            disp(gameBoard)

                        else
                            disp('This spot has already been played. Please choose another spot')
                        end
                    case '9'
                        if contains(gameBoard(3,3),"spot")
                            gameBoard(3,3) = "x";
                            playerMove = playerMove+1;
                            disp(gameBoard)
                           
                        else
                            disp('This spot has already been played. Please choose another spot')
                        end
                end
            end

        end
    end

playPrompt = "Would you like to play again? Type yes or no and press enter: "; % ask the user if they would like to play again
userPlay = input(playPrompt,'s'); % prompt user if they want to play again; their answer lives in this variable
userPlay = convertCharsToStrings(userPlay); %convert user's answer into a string


end

FinalMessage = fprintf("Thank you for playing Tic Tac Toe! You won " + numWins + " games, lost " + numLosses + " games, and tied " + numTies + " games. Have a splendid day!" ); %After the user is done playing, display a final message which includes the total number of wins, losses, and ties
