%% This is my tic tac toe game with loops :)
% Alex Shaver
% Due Date: 10/6/2017
% This game *should* run until there is a winner or a tie then offer 
% to play again or quit
%% Welcome message and board presentation
clc %clears the command window
clear %clears variables and functions 
answer= input('Weclome! To play Tic Tac Toe type 1 then press "Enter" and the game board will appear.\n'); %prompts user for move
while (answer~= 1)
    answer= input('You did not follow instructions, try again.\n');  
end %does not accept answer other than 1 to continue 
for answer= 1
board= num2str([1 2 3; 4 5 6; 7 8 9]);
computerMoveOne= 5;
disp(board)
begin=input('This is our game board. Please type 1 and press enter again to start. I will be Os. Do not try to pick a space that has already been taken or is not on the board.\n');
end %this displays the board if the user follows directions and prompts for next move
while (begin~= 1)
    input('You did not follow instructions, try again.\n');
end %has the user enter answers until they type 1. 
for begin= 1
    board(2,4)= 'O';
    computerMoveOne= 5;  
    disp(board);
end %this displays computer's first move on the updated board
%% User Selects moveOne and computer selects computerMoveTwo
moveOne= input('Pick the number that matches the space you want to move and press enter.\n'); %propmts user for move
while(moveOne~= 1:9)
      moveOne= input('That number is not on the board. Try agin, please.\n'); 
end %user cannot continue until they pick a space that has not been taken
while (moveOne== computerMoveOne)
       moveOne= input('Not a space that has already been taken.\n');
end %user cannot continue until they pick a space that has not been taken
pause (2) %pauses for 2 seconds 
if (moveOne== 1)
    board(1,1)= 'X';
    computerMoveTwo= 3;
    board(1,7)= 'O';
elseif (moveOne== 2)
    board(1,4)= 'X';
    computerMoveTwo= 3;
    board(1,7)= 'O';
elseif (moveOne== 3)
    board(1,7)= 'X';
    computerMoveTwo= 1;
    board(1,1)= 'O';
elseif (moveOne== 4)
    board(2,1)= 'X';
    computerMoveTwo= 1;
    board(1,1)= 'O';
elseif (moveOne== 6)
    board(2,7)= 'X';
    computerMoveTwo= 1;
    board(1,1)= 'O';
elseif (moveOne== 7)
    board(3,1)= 'X';
    computerMoveTwo= 1;
    board(1,1)= 'O';
elseif (moveOne== 8)
    board(3,4)= 'X';
    computerMoveTwo= 1;
    board(1,1)= 'O';
elseif (moveOne== 9)
    board(3,7)= 'X';
    computerMoveTwo= 3;
    board(1,7)= 'O';
end
disp(board); %updates and dispalys the board   
%% User selects moveTwo 
moveTwo= input('Pick the second number that matches the space you want to move and press enter.\n'); %prompt user for move
while (moveTwo== computerMoveOne) 
       moveTwo= input('Not a space that has already been taken.\n');
end %stops user from selecting a taken space
while (moveTwo== computerMoveTwo)
       moveTwo= input('Not a space that has already been taken.\n');
end
while(moveTwo== moveOne)
      moveTwo= input('Not a space that has already been taken.\n');
end
while(moveTwo~= 1:9)
      moveTwo= input('That number is not on the board. Try agin, please.\n'); 
end %stops user from selecting a nonexistant space
if (moveTwo== 9)
        board(3,7)= 'X';
elseif (moveTwo== 8)
        board(3,4)= 'X';
elseif (moveTwo== 7)
        board(3,1)= 'X';
elseif (moveTwo== 6)
        board(2,7)= 'X';
elseif (moveTwo== 4)
        board(2,1)= 'X';
elseif (moveTwo== 3)
        board(1,7)= 'X';
elseif (moveTwo== 2)
        board(1,4)= 'X';
elseif (moveTwo== 1)
        board(1,1)= 'X';
end
disp(board); %displays updated board
%% Computer selects computerMoveThree
pause (2) %pauses for two seconds 
if (moveOne== 1)
    if (moveTwo== 2)
        computerMoveThree= 22;
        board(3,1)= 'O';
        disp(board)
    end
end   
if (moveOne== 1)
    if (moveTwo== 4)
        computerMoveThree= 22;
        board(3,1)= 'O';
        disp(board)
    end
end
if (moveOne== 1)
    if (moveTwo== 6)
        computerMoveThree= 22;
        board(3,1)= 'O';
        disp(board)
    end
end
if (moveOne== 1)
    if (moveTwo== 7)
        computerMoveThree= 4;
        board(2,1)= 'O';
        disp(board)
    end
end
if (moveOne== 1)
    if (moveTwo== 8)
        computerMoveThree= 22;
        board(3,1)= 'O';
        disp(board)
    end
end
if (moveOne== 1)
    if (moveTwo== 9)
        computerMoveThree= 22;
        board(3,1)= 'O';
        disp(board)
    end
end

if (moveOne== 2)
    if (moveTwo== 1)
        computerMoveThree= 22;
        board(3,1)= 'O';
        disp(board)
    end
end

if (moveOne== 2)
    if (moveTwo== 4)
        computerMoveThree= 22;
        board(3,1)= 'O';
        disp(board)
    end
end
if (moveOne== 2)
    if (moveTwo== 6)
        computerMoveThree= 22;
        board(3,1)= 'O';
        disp(board)
    end
end
if (moveOne== 2)
    if (moveTwo== 7)
        computerMoveThree= 4;
        board(2,1)= 'O';
        disp(board)
    end
end
if (moveOne== 2)
    if (moveTwo== 8)
        computerMoveThree= 22;
        board(3,1)= 'O';
        disp(board)
    end
end
if (moveOne== 2)
    if (moveTwo== 9)
        computerMoveThree= 22;
        board(3,1)= 'O';
        disp(board)
    end
end
if (moveOne== 3)
    if (moveTwo== 2)
        computerMoveThree= 22;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 3)
    if (moveTwo== 4)
        computerMoveThree= 22;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 3)
    if (moveTwo== 6)
        computerMoveThree= 22;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 3)
    if (moveTwo== 7)
        computerMoveThree= 22;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 3)
    if (moveTwo== 8)
        computerMoveThree= 22;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 3)
    if (moveTwo== 9)
        computerMoveThree= 6;
        board(2,7)= 'O';
        disp(board)
    end
end
if (moveOne== 4)
    if (moveTwo== 2)
        computerMoveThree= 22;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 4)
    if (moveTwo== 3)
        computerMoveThree= 22;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 4)
    if (moveTwo== 6)
        computerMoveThree= 22;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 4)
    if (moveTwo== 7)
        computerMoveThree= 22;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 4)
    if (moveTwo== 8)
        computerMoveThree= 22;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 4)
    if (moveTwo== 9)
        computerMoveThree= 3;
        board(1,7)= 'O';
        disp(board)
    end
end
if (moveOne== 6)
    if (moveTwo== 2)
        computerMoveThree= 22;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 6)
    if (moveTwo== 3)
        computerMoveThree= 22;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 6)
    if (moveTwo== 4)
        computerMoveThree= 22;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 6)
    if (moveTwo== 7)
        computerMoveThree= 22;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 6)
    if (moveTwo== 8)
        computerMoveThree= 22;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 6)
    if (moveTwo== 9)
        computerMoveThree= 3;
        board(1,7)= 'O';
        disp(board)
    end
end
if (moveOne== 7)
    if (moveTwo== 2)
        computerMoveThree= 22;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 7)
    if (moveTwo== 3)
        computerMoveThree= 22;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 7)
    if (moveTwo== 4)
        computerMoveThree= 22;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 7)
    if (moveTwo== 6)
        computerMoveThree= 22;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 7)
    if (moveTwo== 8)
        computerMoveThree= 22;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 7)
    if (moveTwo== 9)
        computerMoveThree= 8;
        board(3,4)= 'O';
        disp(board)
    end
end
if (moveOne== 8)
    if (moveTwo== 2)
        computerMoveThree= 22;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 8)
    if (moveTwo== 3)
        computerMoveThree= 22;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 8)
    if (moveTwo== 4)
        computerMoveThree= 22;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 8)
    if (moveTwo== 6)
        computerMoveThree= 22;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 8)
    if (moveTwo== 7)
        computerMoveThree= 22;
        board(3,7)= 'O';
        disp(board)
    end
end
if (moveOne== 8)
    if (moveTwo== 9)
        computerMoveThree= 7;
        board(3,1)= 'O';
        disp(board)
    end
end
if (moveOne== 9)
    if (moveTwo== 1)
        computerMoveThree= 22;
        board(3,1)= 'O';
        disp(board)
    end
end
if (moveOne== 9)
    if (moveTwo== 2)
        computerMoveThree= 22;
        board(3,1)= 'O';
        disp(board)
    end
end
if (moveOne== 9)
    if (moveTwo== 4)
        computerMoveThree= 22;
        board(3,1)= 'O';
        disp(board)
    end
end
if (moveOne== 9)
    if (moveTwo== 6)
        computerMoveThree= 7;
        board(3,1)= 'O';
        disp(board)
    end
end
if (moveOne== 9)
    if (moveTwo== 7)
        computerMoveThree= 8;
        board(3,4)= 'O';
        disp(board)
    end
end
if (moveOne== 9)
    if (moveTwo== 8)
        computerMoveThree= 22;
        board(3,1)= 'O';
        disp(board)
    end
end
if (computerMoveThree~= 22)
     moveThree= input('Pick the number that matches the space you want to move.\n');
elseif (computerMoveThree== 22)
      playagain= input('I win! If youd like to play again type 2. If not type anythign else to exit.\n');
 while playagain== 2
          run tictactoe2
      if playagain~= 2
         exit
      end
 end
end %updates and displays board 
%% User Selects moveThree and computer checks for a winner and asks to play again
while (moveThree== computerMoveOne)
       moveThree= input('Not a space that has already been taken.\n');
end
while (moveThree== computerMoveTwo)
       moveThree= input('Not a space that has already been taken.\n');
end
while (moveThree== computerMoveThree)
       moveThree= input('Not a space that has already been taken.\n');
end
while (moveThree== moveOne)
       moveThree= input('Not a space that has already been taken.\n');
end
while (moveThree== moveTwo)
       moveThree= input('Not a space that has already been taken.\n');
end
while(moveThree~= 1:9)
      moveThree= input('That number is not on the board. Try agin, please.\n'); 
end 
if (moveThree== 9)
        board(3,7)= 'X';
elseif (moveThree== 8)
        board(3,4)= 'X';
elseif (moveThree== 7)
        board(3,1)= 'X';
elseif (moveThree== 6)
        board(2,7)= 'X';
elseif (moveThree== 4)
        board(2,1)= 'X';
elseif (moveThree== 3)
        board(1,7)= 'X';
elseif (moveThree== 2)
        board(1,4)= 'X';
elseif (moveThree== 1)
        board(1,1)= 'X';
end
disp(board);
%% Computer selects computerMoveFour
%%%%%%%% LOOK HERE
pause (2)
if (moveOne== 1)  
    if (moveTwo== 7)
        if (moveThree== 2)
            computerMoveFour= 22;
            board(2,7)= 'O';
            disp(board)
         end
     end
end 

if (moveOne== 1)
    if (moveTwo== 7)
        if (moveThree== 6)
            computerMoveFour= 2;
            board(1,4)= 'O';
            disp(board)
        end
    end
end

if (moveOne== 1)
    if (moveTwo== 7)
        if (moveThree== 8)
            computerMoveFour= 22;
            board(2,7)= 'O';
            disp(board)
        end
    end
end

if (moveOne== 1)
    if (moveTwo== 7)
        if (moveThree== 9)
            computerMoveFour= 22;
            board(2,7)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 2)
    if (moveTwo== 7)
        if (moveThree== 1)
            computerMoveFour= 22;
            board(2,7)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 2)
    if (moveTwo== 7)
        if (moveThree== 6)
            computerMoveFour= 9;
            board(3,7)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 2)
    if (moveTwo== 7)
        if (moveThree== 8)
            computerMoveFour= 22;
            board(2,7)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 2)
    if (moveTwo== 7)
        if (moveThree== 9)
            computerMoveFour= 22;
            board(2,7)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 3)
    if (moveTwo== 9)
        if (moveThree== 2)
            computerMoveFour= 22;
            board(2,1)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 3)
    if (moveTwo== 9)
        if (moveThree== 4)
            computerMoveFour= 7;
            board(3,1)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 3)
    if (moveTwo== 9)
        if (moveThree== 7)
            computerMoveFour= 22;
            board(2,1)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 3)
    if (moveTwo== 9)
        if (moveThree== 8)
            computerMoveFour= 22;
            board(2,1)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 4)
    if (moveTwo== 9)
        if (moveThree== 2)
            computerMoveFour= 22;
            board(3,1)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 4)
    if (moveTwo== 9)
        if (moveThree== 6)
            computerMoveFour= 22;
            board(3,1)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 4)
    if (moveTwo== 9)
        if (moveThree== 7)
            computerMoveFour= 22;
            board(1,4)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 4)
    if (moveTwo== 9)
        if (moveThree== 8)
            computerMoveFour= 22;
            board(1,4)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 6)
    if (moveTwo== 9)
        if (moveThree== 2)
            computerMoveFour= 22;
            board(3,1)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 6)
    if (moveTwo== 9)
        if (moveThree== 4)
            computerMoveFour= 22;
            board(3,1)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 6)
    if (moveTwo== 9)
        if (moveThree== 7)
            computerMoveFour= 22;
            board(1,4)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 6)
    if (moveTwo== 9)
        if (moveThree== 8)
            computerMoveFour= 2;
            board(3,1)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 7)
    if (moveTwo== 9)
        if (moveThree== 2)
            computerMoveFour= 6;
            board(2,7)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 7)
    if (moveTwo== 9)
        if (moveThree== 3)
            computerMoveFour= 22;
            board(1,4)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 7)
    if (moveTwo== 9)
        if (moveThree== 4)
            computerMoveFour= 22;
            board(1,4)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 7)
    if (moveTwo== 9)
        if (moveThree== 6)
            computerMoveFour= 22;
            board(1,4)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 8)
    if (moveTwo== 9)
        if (moveThree== 2)
            computerMoveFour= 22;
            board(1,7)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 8)
    if (moveTwo== 9)
        if (moveThree== 3)
            computerMoveFour= 22;
            board(2,1)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 8)
    if (moveTwo== 9)
        if (moveThree== 4)
            computerMoveFour= 22;
            board(1,7)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 8)
    if (moveTwo== 9)
        if (moveThree== 6)
            computerMoveFour= 22;
            board(1,7)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 9)
    if (moveTwo== 7)
        if (moveThree== 1)
            computerMoveFour= 22;
            board(1,4)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 9)
    if (moveTwo== 7)
        if (moveThree== 2)
            computerMoveFour= 1;
            board(1,1)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 9)
    if (moveTwo== 7)
        if (moveThree== 4)
            computerMoveFour= 22;
            board(1,4)= 'O';
            disp(board)
        end
    end
end
if (moveOne== 9)
    if (moveTwo== 7)
        if (moveThree== 6)
            computerMoveFour= 22;
            board(1,4)= 'O';
            disp(board)
        end
    end
end
%% User selects moveFour computer checks for winner
if (computerMoveFour~= 22)
      moveFour= input('Pick the number that matches the space you want to move and press enter.\n');
elseif(computerMoveFour== 22)
      playagain= input('I win! If youd like to play again type 2. If not type anythign else to exit.\n');
elseif playagain== 2
           run tictactoe2
elseif playagain~= 2
             exit
end 
      

while (moveFour== computerMoveOne)
       moveFour= input('Not a space that has already been taken.\n');
end
while (moveFour== computerMoveTwo)
       moveFour= input('Not a space that has already been taken.\n');
end
while (moveFour== computerMoveThree)
       moveFour= input('Not a space that has already been taken.\n');
end
while (moveFour== computerMoveFour)
       moveFour= input('Not a space that has already been taken.\n');
end
while (moveFour== moveOne)
       moveFour= input('Not a space that has already been taken.\n');
end
while (moveFour== moveTwo)
       moveFour= input('Not a space that has already been taken.\n');
end
while (moveFour== moveThree)
       moveFour= input('Not a space that has already been taken.\n');
end
while(moveFour~= 1:9)
      moveFour= input('That number is not on the board. Try agin, please.\n'); 
end 
if (moveFour== 9)
        board(3,7)= 'X';
elseif (moveFour== 8)
        board(3,4)= 'X';
elseif (moveFour== 7)
        board(3,1)= 'X';
elseif (moveFour== 6)
        board(2,7)= 'X';
elseif (moveFour== 4)
        board(2,1)= 'X';
elseif (moveFour== 3)
        board(1,7)= 'X';
elseif (moveFour== 2)
        board(1,4)= 'X';
elseif (moveFour== 1)
        board(1,1)= 'X';
end
disp(board);
%% Computer selects computerMoveFive and checks for winner or a draw
if (moveOne== 1)
    if (moveTwo== 7)
        if (moveThree== 6)
            if (moveFour== 8)
            computerMoveFive= 27;
            board(3,7)= 'O';
            disp(board)
            end
        end
    end
end

if (moveOne== 1)
    if (moveTwo== 7)
        if (moveThree== 6)
            if (moveFour== 9)
            computerMoveFive= 27;
            board(3,4)= 'O';
            disp(board)
            end
        end
    end
end

if (moveOne== 2)
    if (moveTwo== 7)
        if (moveThree== 6)
            if (moveFour== 1)
            computerMoveFive= 27;
            board(3,4)= 'O';
            disp(board)
            end
        end
    end
end

if (moveOne== 2)
    if (moveTwo== 7)
        if (moveThree== 6)
            if (moveFour== 8)
            computerMoveFive= 27;
            board(1,1)= 'O';
            disp(board)
            end
        end
    end
end
if (moveOne== 3)
    if (moveTwo== 9)
        if (moveThree== 4)
            if (moveFour== 2)
            computerMoveFive= 27;
            board(3,4)= 'O';
            disp(board)
            end
        end
    end
end
if (moveOne== 3)
    if (moveTwo== 9)
        if (moveThree== 4)
            if (moveFour== 8)
            computerMoveFive= 27;
            board(1,4)= 'O';
            disp(board)
            end
        end
    end
end
if (moveOne== 7)
    if (moveTwo== 9)
        if (moveThree== 2)
            if (moveFour== 3)
            computerMoveFive= 27;
            board(2,1)= 'O';
            disp(board)
            end
        end
    end
end
if (moveOne== 7)
    if (moveTwo== 9)
        if (moveThree== 2)
            if (moveFour== 4)
            computerMoveFive= 27;
            board(1,7)= 'O';
            disp(board)
            end
        end
    end
end
if (moveOne== 9)
    if (moveTwo== 7)
        if (moveThree== 2)
            if (moveFour== 4)
            computerMoveFive= 27;
            board(2,7)= 'O';
            disp(board)
            end
        end
    end
end
if (moveOne== 9)
    if (moveTwo== 7)
        if (moveThree== 2)
            if (moveFour== 6)
            computerMoveFive= 27;
            board(2,1)= 'O';
            disp(board)
            end
        end
    end
end
for computerMoveFive= 27
      playagain= input('Ties go to the computer, right? If youd like to play again type 2. If not type anythign else to exit.\n');
end
while playagain== 2
   run tictactoe2
   if playagain ~=2
       break
   end
end


      

    
    
    
    
    