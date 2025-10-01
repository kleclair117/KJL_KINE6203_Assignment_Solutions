% Kaleb LeClair
% October 1st, 2025
% Code description:This script runs tic-tac-toe in its simplest form. It is
% a Player vs. Player design with the typical X's and O's. The script first
% asks the user if they would like to play, if yes, the game board is
% initialized and the first player is prompted to play. If no, the script
% ends with a message. The code includes one while loop, one for loop, one
% break loop and a few nested-if statements. The game will play until the
% user is tired of playing and will be prompted to restart at the
% end of each game. 

% Initialize board
board = repmat(' ', 3, 3);
% repmat allows the 3x3 array to be repeated 
% using one player creates and 'either or' scenario, in this case it is X or
% it is O
player = 'X';
gameOver = false;
gameRestart = false;
disp('Welcome to tic-tac-toe on MatLab!')
% Initialize option to play the game
playOption = input('Do you want to play? (y/n): ', 's');
if playOption == 'y'
    while ~gameOver
        % Display game board
        disp('Game Board:');
        % i is typically the first variable in a for loop
        for i = 1:3
        % '%c' signifies a character rather than an integer, board(i,n)
        % sets the boundaries
        fprintf(' %c | %c | %c \n', board(i,1), board(i,2), board(i,3));
            if i < 3
            fprintf('---|---|---\n');
            % n' blanks each box and creates the space for characters X or O
            end
        end

        % Player move
        fprintf('\nPlayer %c''s turn.\n', player);
        row = input('Enter row (1-3): ');
        col = input('Enter column (1-3): ');

        % Check if move is valid
        if board(row, col) ~= ' '
            fprintf('Invalid move! Try again.\n');
            break
        else
            board(row, col) = player;

         % Check for win
         % 'all' determines if array is true or false, 'diag' looks at the
         % diagonal of the matrix, 'flipud' flips the array and was
         % aided by AI. 
         winner = any(all(board == player, 1)) || any(all(board == player, 2)) || all(diag(board) == player) || all(diag(flipud(board)) == player);
            if winner
            fprintf('\nPlayer %c wins! Thanks for playing, I hope you win every game!\n', player);
            gameOver = true;
                if true
                    gameRestart = input('Do you want to restart the game? (y/n): ', 's');
                        if gameRestart == 'y'
                            board = repmat(' ', 3, 3);
                            gameOver = false; 
                            player = 'X'; 
                        end
                end
            elseif all(board(:) ~= ' ')
            fprintf('\nTie!\n');
            gameOver = true;
                if true
                    gameRestart = input('Do you want to restart the game? (y/n): ', 's');
                        if gameRestart == 'y'
                            board = repmat(' ', 3, 3);
                            gameOver = false; 
                            player = 'X'; 
                        end
                end
            else
            % Switch player
                if player == 'X'
                player = 'O';
                else
                player = 'X';
                end
                clc;  % Clear screen for next turn
            end
        end
    end
else
    disp('You are no fun')
end

