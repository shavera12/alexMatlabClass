
%% Welcome Message and computerMoveOne

clear
clc

answer= input('Weclome! To play Tic Tac Toe type 1 then press "Enter" and the game board will appear.\n');
board= num2str([1 2 3; 4 5 6; 7 8 9]);
computerMoveOne= 5;
% displays welcome message and the game board. Also defines the computer's
% first move.
if (answer==1);
   disp(board);
   begin=input('This is our game board. Please type 1 again to start. I will be Os. Do not try to pick a space that has already been taken or is not on the board.I will give you a few chances to get it right for the first three turns. After that, I will end the game.\n');
   board(2,4)= 'O';
   computerMoveOne= 5;
   
  disp(board);
elseif(answer~= 1);
  error('Please run the script again and follow directions')  
end
% If the user follows the instructions the game board and instructions will appear with
% computerMoveOne showing on the board. 
% If the user does not follow the instructions they will recieve an error.
% lines 4 and 5 clear everything before starting
% Sorry about the capital letter in the variables. By the time I got your
% email about my other assignments I had already written a bunch of this
% and if I tried to change them I would have messed up somewhere and
% it would have been broken forever :) I won't use them on the next
% assignment 
%% User Selects moveOne
if (begin== 1);
    moveOne= input('Pick the number that matches the space you want to move and press enter\n');
end
if (moveOne== computerMoveOne);
    moveOne= input('Not in the space I picked. Please try again\n');
elseif (moveOne~= 1:9);
        moveOne= input('I said between 1 and 9. Please try again.\n');
elseif (moveOne== 1);
   board(1,1)= 'X';
end

if (moveOne== computerMoveOne);
    moveOne= input('Seriously... not in the space I picked. Please try again\n');
elseif(moveOne~= 1:9);
       moveOne= input('I said between 1 and 9, ding-dong. Please try again.\n');
elseif (moveOne== 2);
    board(1,4)= 'X';
end

if (moveOne== computerMoveOne);
    moveOne= input('Not in the space I picked. Please try again\n');
elseif (moveOne~= 1:9);
        moveOne= input(' We have already been over this... Please try again.\n');
elseif (moveOne== 3);
        board(1,7)= 'X';
end

if (moveOne== computerMoveOne);
    moveOne= input('Not in the space I picked. Please try again\n');
elseif (moveOne~= 1:9);
        moveOne= input('I said between 1 and 9, ding-dong. Please try again.\n');
elseif (moveOne== 4);
        board(2,1)= 'X';
end

if (moveOne== computerMoveOne);
    moveOne= input('Not in the space I picked. Please try again\n');
elseif (moveOne~= 1:9);
        moveOne= input('Dude... Please try again.\n');
elseif (moveOne== 6);
        board(2,7)= 'X';
end

if (moveOne== computerMoveOne);
    moveOne= input(' Ugh. Not in the space I picked. Please try again\n');
elseif (moveOne~= 1:9);
        moveOne= input('What part of "between 1 and 9" is so hard? Please try again.\n');
elseif (moveOne== 7);
       board(3,1)= 'X';
end

if (moveOne== computerMoveOne);
    moveOne= input('You are really pushing the wrong buttons here... Not in the space I picked. Please try again\n');
elseif (moveOne~= 1:9);
        moveOne= input('Do you see that number anywhere on the board?. Please try again.\n');
elseif moveOne== 8;
       board(3,4)= 'X';
end

if (moveOne== computerMoveOne);
    moveOne= input('This is your last chance to pick a space that has not been taken and is between 1 and 9 before taking a loss here... Choose wisely\n');
elseif (moveOne~= 1:9);
    moveOne= input('This is your last chance to pick a space that has not been taken and is between 1 and 9 before taking a loss here... Choose wisely\n');
elseif (moveOne== 9);
        board(3,7)= 'X';
elseif (moveOne== 8);
        board(3,4)= 'X';
elseif (moveOne== 7);
        board(3,1)= 'X';
elseif (moveOne== 6);
        board(2,7)= 'X';
elseif (moveOne== 4);
        board(2,1)= 'X';
elseif (moveOne== 3);
        board(1,7)= 'X';
elseif (moveOne== 2);
        board(1,4)= 'X';
elseif (moveOne== 1);
       board(1,1)= 'X';
end

if (moveOne== computerMoveOne);
    board(1,1)= 'O';
    board(2,4)= 'O';
    board(3,7)= 'O';
    disp(board)
    error('You could not follow directions and failed... Hoping my grade does not suffer the same fate. I will gladly take this small vistory while I can. Please run the script again to give it another go.');
elseif (moveOne~= 1:9);
        board(1,1)= 'O';
        board(2,4)= 'O';
        board(3,7)= 'O';
        disp(board)
        error('You could not follow directions and failed... Hoping my grade does not suffer the same fate. I will gladly take this small vistory while I can. Please run the script again to give it another go.');
end
% moveOne= user's first selected space
% If their first move is a legal move the game board changes to refelct their move.
% If their first move is not valid it will display a message asking them to
% try again. 
% If no valid response is given, the computer wins the game.
%% Computer Determines computerMoveTwo
if (moveOne== 1);
    computerMoveTwo= 3;
    board(1,7)= 'O';
    disp(board)
elseif (moveOne== 2);
    computerMoveTwo= 3;
    board(1,7)= 'O';
    disp(board)
elseif (moveOne== 3);
    computerMoveTwo= 1
    board(1,1)= 'O';
    disp(board)
elseif (moveOne== 4);
    computerMoveTwo= 1;
    board(1,1)= 'O';
    disp(board)
elseif (moveOne== 6);
    computerMoveTwo= 1;
    board(1,1)= 'O';
    disp(board)
elseif (moveOne== 7);
    computerMoveTwo= 1;
    board(1,1)= 'O';
    disp(board)
elseif (moveOne== 8);
    computerMoveTwo= 1;
    board(1,1)= 'O';
    disp(board)
elseif (moveOne== 9);
    computerMoveTwo= 3;
    board(1,7)= 'O';
    disp(board)
end
moveOne;
computerMoveOne;
computerMoveTwo;
% computerMoveTwo= the computer's second move
% This section responds to every possible moveOne from the user and
% displays the board to refelct computerMoveTwo.
%% User selects MoveTwo
moveTwo= input('Pick the number that matches the space you want to move that has not been taken.\n');  
if (moveTwo== moveOne);
    moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo== computerMoveOne);
        moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo~= 1:9);
        moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo== computerMoveTwo);
        moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo== 1);
        board(1,1)= 'X';
end

if (moveTwo== moveOne);
    moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo== computerMoveOne);
        moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo~= 1:9);
        moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo== computerMoveTwo);
        moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo== 2);
        board(1,4)= 'X';
end

if (moveTwo== moveOne);
    moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo== computerMoveOne);
        moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo~= 1:9);
        moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo== computerMoveTwo);
        moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo== 3);
        board(1,7)= 'X';
end

if (moveTwo== moveOne);
    moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo== computerMoveOne);
        moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo~= 1:9);
        moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo== computerMoveTwo);
        moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo== 4);
        board(2,1)= 'X';
end

if (moveTwo== moveOne);
    moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo== computerMoveOne);
        moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo~= 1:9);
        moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo== computerMoveTwo);
        moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo== 6);
        board(2,7)= 'X';
end

if (moveTwo== moveOne);
    moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo== computerMoveOne);
        moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo~= 1:9);
        moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo== computerMoveTwo);
        moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo== 7);
        board(3,1)= 'X';
end

if (moveTwo== moveOne);
    moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo== computerMoveOne);
        moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo~= 1:9);
        moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo== computerMoveTwo);
        moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo== 8);
        board(3,4)= 'X';
end

if (moveTwo== moveOne);
    moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo== computerMoveOne);
        moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo~= 1:9);
        moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo== computerMoveTwo);
        moveTwo= input('Pretty please pick a number that matches the space you want to use that has not been taken, and is between 1 and 9.\n');
elseif (moveTwo== 9);
        board(3,7)= 'X';
end

if (moveTwo== computerMoveOne);
    moveTwo= input('This is your last chance to pick a space that has not been taken and is between 1 and 9 before taking a loss here... Choose wisely\n');
elseif (moveTwo~= 1:9);
    moveTwo= input('This is your last chance to pick a space that has not been taken and is between 1 and 9 before taking a loss here... Choose wisely\n');
end

if (moveTwo== 9);
        board(3,7)= 'X';
elseif (moveTwo== 8);
        board(3,4)= 'X';
elseif (moveTwo== 7);
        board(3,1)= 'X';
elseif (moveTwo== 6);
        board(2,7)= 'X';
elseif (moveTwo== 4);
        board(2,1)= 'X';
elseif (moveTwo== 3);
        board(1,7)= 'X';
elseif (moveTwo== 2);
        board(1,4)= 'X';
elseif (moveTwo== 1);
        board(1,1)= 'X';
end

if (moveTwo== computerMoveOne);
    board(1,1)= 'O';
    board(2,4)= 'O';
    board(3,7)= 'O';
    error('You could not follow directions and failed... Hoping my grade does not suffer the same fate. I will gladly take this small vistory while I can.\n');
elseif (moveTwo== computerMoveTwo);
    board(1,1)= 'O';
    board(2,4)= 'O';
    board(3,7)= 'O';
    error('You could not follow directions and failed... Hoping my grade does not suffer the same fate. I will gladly take this small vistory while I can.\n');
elseif (moveTwo== moveOne);
    board(1,1)= 'O';
    board(2,4)= 'O';
    board(3,7)= 'O';
    error('You could not follow directions and failed... Hoping my grade does not suffer the same fate. I will gladly take this small vistory while I can.\n');
elseif (moveTwo~= 1:9);
        board(1,1)= 'O';
        board(2,4)= 'O';
        board(3,7)= 'O';
        error('You could not follow directions and failed... Hoping my grade does not suffer the same fate. I will gladly take this small vistory while I can.\n');
end
moveOne;
moveTwo;
computerMoveOne;
computerMoveTwo;
% moveTwo= user's second selected space
% If their second move is a legal move the game board changes to refelct their move.
% If their second move is not valid it will display a message asking them to
% try again. 
% If no valid response is given, the computer wins the game.
%% Computer Selects computerMoveThree
if (moveOne== 1);
    if (moveTwo== 2);
        computerMoveThree= 7;
        board(3,1)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 1);
    if (moveTwo== 4);
        computerMoveThree= 7;
        board(3,1)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 1);
    if (moveTwo== 6);
        computerMoveThree= 7;
        board(3,1)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 1);
    if (moveTwo== 7);
        computerMoveThree= 4;
        board(2,1)= 'O';
        disp(board)
    end
end
if (moveOne== 1);
    if (moveTwo== 8);
        computerMoveThree= 7;
        board(3,1)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 1);
    if (moveTwo== 9);
        computerMoveThree= 7;
        board(3,1)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end

if (moveOne== 2);
    if (moveTwo== 1);
        computerMoveThree= 7;
        board(3,1)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end

if (moveOne== 2);
    if (moveTwo== 4);
        computerMoveThree= 7;
        board(3,1)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 2);
    if (moveTwo== 7);
        computerMoveThree= 4;
        board(2,1)= 'O';
        disp(board)
    end
end
if (moveOne== 2);
    if (moveTwo== 8);
        computerMoveThree= 7;
        board(3,1)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 2);
    if (moveTwo== 9);
        computerMoveThree= 7;
        board(3,1)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 3);
    if (moveTwo== 2);
        computerMoveThree= 9;
        board(3,7)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 3);
    if (moveTwo== 4);
        computerMoveThree= 9;
        board(3,7)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 3);
    if (moveTwo== 6);
        computerMoveThree= 9;
        board(3,7)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 3);
    if (moveTwo== 7);
        computerMoveThree= 9;
        board(3,7)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 3);
    if (moveTwo== 8);
        computerMoveThree= 9;
        board(3,7)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 3);
    if (moveTwo== 9);
        computerMoveThree= 6;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 4);
    if (moveTwo== 2);
        computerMoveThree= 9;
        board(3,7)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 4);
    if (moveTwo== 3);
        computerMoveThree= 9;
        board(3,7)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 4);
    if (moveTwo== 6);
        computerMoveThree= 9;
        board(3,7)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 4);
    if (moveTwo== 7);
        computerMoveThree= 9;
        board(3,7)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 4);
    if (moveTwo== 8);
        computerMoveThree= 9;
        board(3,7)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 4);
    if (moveTwo== 9);
        computerMoveThree= 3;
        board(1,7)= 'O';
        disp(board)
    end
end
if (moveOne== 6);
    if (moveTwo== 2);
        computerMoveThree= 9;
        board(3,7)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 6);
    if (moveTwo== 3);
        computerMoveThree= 9;
        board(3,7)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 6);
    if (moveTwo== 4);
        computerMoveThree= 9;
        board(3,7)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 6);
    if (moveTwo== 7);
        computerMoveThree= 9;
        board(3,7)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 6);
    if (moveTwo== 8);
        computerMoveThree= 9;
        board(3,7)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 6);
    if (moveTwo== 9);
        computerMoveThree= 3;
        board(1,7)= 'O';
        disp(board)
    end
end
if (moveOne== 7);
    if (moveTwo== 2);
        computerMoveThree= 9;
        board(3,7)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 7);
    if (moveTwo== 3);
        computerMoveThree= 9;
        board(3,7)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 7);
    if (moveTwo== 4);
        computerMoveThree= 9;
        board(3,7)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 7);
    if (moveTwo== 6);
        computerMoveThree= 9;
        board(3,7)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 7);
    if (moveTwo== 8);
        computerMoveThree= 9;
        board(3,7)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 7);
    if (moveTwo== 9);
        computerMoveThree= 8;
        board(3,4)= 'O';
        disp(board)
    end
end
if (moveOne== 8);
    if (moveTwo== 2);
        computerMoveThree= 9;
        board(3,7)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 8);
    if (moveTwo== 3);
        computerMoveThree= 9;
        board(3,7)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 8);
    if (moveTwo== 4);
        computerMoveThree= 9;
        board(3,7)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 8);
    if (moveTwo== 6);
        computerMoveThree= 9;
        board(3,7)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 8);
    if (moveTwo== 7);
        computerMoveThree= 9;
        board(3,7)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 8);
    if (moveTwo== 9);
        computerMoveThree= 7;
        board(3,1)= 'O';
        disp(board)
    end
end
if (moveOne== 9);
    if (moveTwo== 1);
        computerMoveThree= 7;
        board(3,1)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 9);
    if (moveTwo== 2);
        computerMoveThree= 7;
        board(3,1)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 9);
    if (moveTwo== 4);
        computerMoveThree= 7;
        board(3,1)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 9);
    if (moveTwo== 6);
        computerMoveThree= 7;
        board(3,1)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
if (moveOne== 9);
    if (moveTwo== 7);
        computerMoveThree= 8;
        board(3,4)= 'O';
        disp(board)
    end
end
if (moveOne== 9);
    if (moveTwo== 8);
        computerMoveThree= 7;
        board(3,1)= 'O';
        disp(board)
        error('I win :) Sorry, friend. Run the Script to play again')
    end
end
moveOne;
moveTwo;
computerMoveOne;
computerMoveTwo;
computerMoveThree;
% computerMoveThree= the computer's third move
% This section responds to moveOne and moveTwo from the user and
% displays the board to refelct all of the moves so far.
% This section also checks to see if there is a winner and announces the
% end of the game if there is one. 
%% User Selects moveThree
moveThree= input('Pick the number and follow the rules or I will end the game.\n');  
if (moveThree== moveOne);
    board(1,1)= 'O';
    board(2,4)= 'O';
    board(3,7)= 'O';
    disp(board)
    error('The game has ended because you cannot follow instructions. So, I win this time. Run the script to play again.')
elseif (moveThree== moveTwo)
        board(1,1)= 'O';
        board(2,4)= 'O';
        board(3,7)= 'O';
        disp(board)
        error('The game has ended because you cannot follow instructions. So, I win this time. Run the script to play again.')
elseif (moveThree== computerMoveOne);
        board(1,1)= 'O';
        board(2,4)= 'O';
        board(3,7)= 'O';
        disp(board)
        error('The game has ended because you cannot follow instructions. So, I win this time. Run the script to play again.')
elseif (moveThree~= 1:9);
        board(1,1)= 'O';
        board(2,4)= 'O';
        board(3,7)= 'O';
        disp(board)
        error('The game has ended because you cannot follow instructions. So, I win this time. Run the script to play again.')
elseif (moveThree== computerMoveTwo);
        board(1,1)= 'O';
        board(2,4)= 'O';
        board(3,7)= 'O';
        disp(board)
        error('The game has ended because you cannot follow instructions. So, I win this time. Run the script to play again.')
elseif (moveThree== computerMoveThree);
        board(1,1)= 'O';
        board(2,4)= 'O';
        board(3,7)= 'O';
        disp(board)
        error('The game has ended because you cannot follow instructions. So, I win this time. Run the script to play again.')
elseif (moveThree== 9);
        board(3,7)= 'X';
elseif (moveThree== 8);
        board(3,4)= 'X';
elseif (moveThree== 7);
        board(3,1)= 'X';
elseif (moveThree== 6);
        board(2,7)= 'X';
elseif (moveThree== 4);
        board(2,1)= 'X';
elseif (moveThree== 3);
        board(1,7)= 'X';
elseif (moveThree== 2);
        board(1,4)= 'X';
elseif (moveThree== 1);
       board(1,1)= 'X';
end
moveOne;
moveTwo;
moveThree;
computerMoveThree;
computerMoveOne;
computerMoveTwo;
% This is when I kind of started to finally figure this assignment out.
% moveThree= user's third selected space
% If their third move is a legal move the game board changes to refelct their move.
% If their third move is not valid it will display an error showing that the computer 
% won because the user did not follow instructions.
%% Computer Selects computerMoveFour
if (moveOne== 1);
    if (moveTwo== 7);
        if (moveThree== 2);
            computerMoveFour= 6;
            board(2,7)= 'O';
            error('I win :) Sorry, friend. Run the Script to play again')
            disp(board)
        end
    end
end

if (moveOne== 1);
    if (moveTwo== 7);
        if (moveThree== 6);
            computerMoveFour= 2;
            board(1,4)= 'O';
            disp(board)
        end
    end
end

if (moveOne== 1);
    if (moveTwo== 7);
        if (moveThree== 8);
            computerMoveFour= 6;
            board(2,7)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end

if (moveOne== 1);
    if (moveTwo== 7);
        if (moveThree== 9);
            computerMoveFour= 6;
            board(2,7)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end
if (moveOne== 2);
    if (moveTwo== 7);
        if (moveThree== 1);
            computerMoveFour= 6;
            board(2,7)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end
if (moveOne== 2);
    if (moveTwo== 7);
        if (moveThree== 6);
            computerMoveFour= 9;
            board(2,7)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 2);
    if (moveTwo== 7);
        if (moveThree== 8);
            computerMoveFour= 6;
            board(2,7)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end
if (moveOne== 2);
    if (moveTwo== 7);
        if (moveThree== 9);
            computerMoveFour= 6;
            board(2,7)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end
if (moveOne== 3);
    if (moveTwo== 9);
        if (moveThree== 2);
            computerMoveFour= 4;
            board(2,1)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end
if (moveOne== 3);
    if (moveTwo== 9);
        if (moveThree== 4);
            computerMoveFour= 7;
            board(3,1)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 3);
    if (moveTwo== 9);
        if (moveThree== 7);
            computerMoveFour= 4;
            board(2,1)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end
if (moveOne== 3);
    if (moveTwo== 9);
        if (moveThree== 8);
            computerMoveFour= 4;
            board(2,1)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end
if (moveOne== 4);
    if (moveTwo== 9);
        if (moveThree== 2);
            computerMoveFour= 7;
            board(3,1)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end
if (moveOne== 4);
    if (moveTwo== 9);
        if (moveThree== 6);
            computerMoveFour= 7;
            board(3,1)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end
if (moveOne== 4);
    if (moveTwo== 9);
        if (moveThree== 7);
            computerMoveFour= 2;
            board(1,4)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end
if (moveOne== 4);
    if (moveTwo== 9);
        if (moveThree== 8);
            computerMoveFour= 2;
            board(1,4)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end
if (moveOne== 6);
    if (moveTwo== 9);
        if (moveThree== 2);
            computerMoveFour= 7;
            board(3,1)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end
if (moveOne== 6);
    if (moveTwo== 9);
        if (moveThree== 4);
            computerMoveFour= 7;
            board(3,1)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end
if (moveOne== 6);
    if (moveTwo== 9);
        if (moveThree== 7);
            computerMoveFour= 2;
            board(1,4)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end
if (moveOne== 6);
    if (moveTwo== 9);
        if (moveThree== 8);
            computerMoveFour= 7;
            board(3,1)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end
if (moveOne== 7);
    if (moveTwo== 9);
        if (moveThree== 2);
            computerMoveFour= 6;
            board(2,7)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 7);
    if (moveTwo== 9);
        if (moveThree== 3);
            computerMoveFour= 2;
            board(1,4)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end
if (moveOne== 7);
    if (moveTwo== 9);
        if (moveThree== 4);
            computerMoveFour= 2;
            board(1,4)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end
if (moveOne== 7);
    if (moveTwo== 9);
        if (moveThree== 6);
            computerMoveFour= 2;
            board(1,4)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end
if (moveOne== 8);
    if (moveTwo== 9);
        if (moveThree== 2);
            computerMoveFour= 3;
            board(1,7)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end
if (moveOne== 8);
    if (moveTwo== 9);
        if (moveThree== 3);
            computerMoveFour= 4;
            board(2,1)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end
if (moveOne== 8);
    if (moveTwo== 9);
        if (moveThree== 4);
            computerMoveFour= 3;
            board(1,7)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end
if (moveOne== 8);
    if (moveTwo== 9);
        if (moveThree== 6);
            computerMoveFour= 3;
            board(1,7)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end
if (moveOne== 9);
    if (moveTwo== 7);
        if (moveThree== 1);
            computerMoveFour= 2;
            board(1,4)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end
if (moveOne== 9);
    if (moveTwo== 7);
        if (moveThree== 2);
            computerMoveFour= 1;
            board(1,1)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 9);
    if (moveTwo== 7);
        if (moveThree== 4);
            computerMoveFour= 2;
            board(1,4)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end
if (moveOne== 9);
    if (moveTwo== 7);
        if (moveThree== 6);
            computerMoveFour= 2;
            board(1,4)= 'O';
            disp(board)
            error('I win :) Sorry, friend. Run the Script to play again')
        end
    end
end
% computerMoveFour= the computer's fourth move
% This section responds to previous moves from the user and
% displays the board to refelct all of the moves so far.
% This section also checks to see if there is a winner and announces the
% end of the game if there is one. 
%% User Selects moveFour
moveFour= input('Pick the number that matches the space you want to move that has not been taken.The game will end if you cannot follow instructions by now.\n');  
if (moveFour== moveOne);
    board(1,1)= 'O';
    board(2,4)= 'O';
    board(3,7)= 'O';
    disp(board)
    error('The game has ended because you cannot follow instructions. So, I win this time. Run the script to play again.')
elseif (moveFour== moveTwo)
        board(1,1)= 'O';
        board(2,4)= 'O';
        board(3,7)= 'O';
        disp(board)
        error('The game has ended because you cannot follow instructions. So, I win this time. Run the script to play again.')
elseif (moveFour== moveThree)
        board(1,1)= 'O';
        board(2,4)= 'O';
        board(3,7)= 'O';
        disp(board)
        error('The game has ended because you cannot follow instructions. So, I win this time. Run the script to play again.')
elseif (moveFour== computerMoveOne);
        board(1,1)= 'O';
        board(2,4)= 'O';
        board(3,7)= 'O';
        disp(board)
        error('The game has ended because you cannot follow instructions. So, I win this time. Run the script to play again.')
elseif (moveFour~= 1:9);
        board(1,1)= 'O';
        board(2,4)= 'O';
        board(3,7)= 'O';
        disp(board)
        error('The game has ended because you cannot follow instructions. So, I win this time. Run the script to play again.')
elseif (moveFour== computerMoveTwo);
        board(1,1)= 'O';
        board(2,4)= 'O';
        board(3,7)= 'O';
        disp(board)
        error('The game has ended because you cannot follow instructions. So, I win this time. Run the script to play again.')
elseif (moveFour== computerMoveThree);
        board(1,1)= 'O';
        board(2,4)= 'O';
        board(3,7)= 'O';
        disp(board)
        error('The game has ended because you cannot follow instructions. So, I win this time. Run the script to play again.')
elseif (moveFour== computerMoveFour)
        board(1,1)= 'O';
        board(2,4)= 'O';
        board(3,7)= 'O';
        disp(board)
        error('The game has ended because you cannot follow instructions. So, I win this time. Run the script to play again.')
elseif (moveFour== 9);
        board(3,7)= 'X';
elseif (moveFour== 8);
        board(3,4)= 'X';
elseif (moveFour== 7);
        board(3,1)= 'X';
elseif (moveFour== 6);
        board(2,7)= 'X';
elseif (moveFour== 4);
        board(2,1)= 'X';
elseif (moveFour== 3);
        board(1,7)= 'X';
elseif (moveFour== 2);
        board(1,4)= 'X';
elseif (moveFour== 1);
        board(1,1)= 'X';
end
moveOne;
moveTwo;
moveThree;
moveFour;
computerMoveOne;
computerMoveTwo;
computerMoveThree;
computerMoveFour;
% moveFour= user's fourth selected space
% If their fourth move is a legal move the game board changes to refelct their move.
% If their fourth move is not valid it will display an error showing that the computer 
% won because the user did not follow instructions.
%% Computer Selects computerMoveFive
if (moveOne== 1);
    if (moveTwo== 7);
        if (moveThree== 6);
            if (moveFour== 8);
            computerMoveFive= 9;
            board(3,7)= 'O';
            disp(board)
            error('Ties go to the computer, right? Good game.')
            end
        end
    end
end

if (moveOne== 1);
    if (moveTwo== 7);
        if (moveThree== 6);
            if (moveFour== 9);
            computerMoveFive= 8;
            board(3,4)= 'O';
            disp(board)
            error('Ties go to the computer, right? Good game.')
            end
        end
    end
end

if (moveOne== 2);
    if (moveTwo== 7);
        if (moveThree== 6);
            if (moveFour== 1);
            computerMoveFive= 8;
            board(3,4)= 'O';
            disp(board)
            error('Ties go to the computer, right? Good game.')
            end
        end
    end
end

if (moveOne== 2);
    if (moveTwo== 7);
        if (moveThree== 6);
            if (moveFour== 8);
            computerMoveFive= 1;
            board(1,1)= 'O';
            disp(board)
            error('Ties go to the computer, right? Good game.')
            end
        end
    end
end
if (moveOne== 3);
    if (moveTwo== 9);
        if (moveThree== 4);
            if (moveFour== 2);
            computerMoveFive= 8;
            board(3,4)= 'O';
            disp(board)
            error('Ties go to the computer, right? Good game.')
            end
        end
    end
end
if (moveOne== 3);
    if (moveTwo== 9);
        if (moveThree== 4);
            if (moveFour== 8);
            computerMoveFive= 2;
            board(1,4)= 'O';
            disp(board)
            error('Ties go to the computer, right? Good game.')
            end
        end
    end
end
if (moveOne== 7);
    if (moveTwo== 9);
        if (moveThree== 2);
            if (moveFour== 3);
            computerMoveFive= 4;
            board(2,1)= 'O';
            disp(board)
            error('Ties go to the computer, right? Good game.')
            end
        end
    end
end
if (moveOne== 7);
    if (moveTwo== 9);
        if (moveThree== 2);
            if (moveFour== 4);
            computerMoveFive= 3;
            board(1,7)= 'O';
            disp(board)
            error('Ties go to the computer, right? Good game.')
            end
        end
    end
end
if (moveOne== 9);
    if (moveTwo== 7);
        if (moveThree== 2);
            if (moveFour== 4);
            computerMoveFive= 6;
            board(2,7)= 'O';
            disp(board)
            error('Ties go to the computer, right? Good game.')
            end
        end
    end
end
if (moveOne== 9);
    if (moveTwo== 7);
        if (moveThree== 2);
            if (moveFour== 6);
            computerMoveFive= 4;
            board(2,1)= 'O';
            disp(board)
            error('Ties go to the computer, right? Good game.')
            end
        end
    end
end
% computerMoveFive= the computer's fifth move
% This section responds to previous moves from the user and
% displays the board to refelct all of the moves so far.
% This section also checks to see if there is a winner and announces the
% end of the game if there is one. 