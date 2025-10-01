% Kaleb LeClair
% October 1st, 2025
% Code description:

% Initialize board
board = repmat(' ', 3, 3);
% repmat allows the 3x3 array to be repeated 
% using one player creates and 'either or' scenario, in this case it is X or
% it is O
player = 'X';
gameOver = false;
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
            elseif all(board(:) ~= ' ')
            fprintf('\nTie!\n');
            gameOver = true;
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