function guessThatNumber4()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber()
%
%        NAME: Alex Shaver
%
%         DUE: November 2
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 10 - 12 bugs,
%              depending on how you correct them. 
% DESCRIPTION EDIT: I'm sorry the name is incorrect. I had to make a few
%                   because I kept losing track of what I had changed that
%                   actually worked versus what did not work.
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;     % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 


while level ~= beginner && level ~= moderate && level ~= advanced %%% || to &&. The || made it so that no matter what level was picked the other two conditions made it technically not a valid answer       
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end
% set highest secret number based on level selected

if level == beginner              %%% Added an = because that's proper synatx         

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

elseif level== advanced  %%% Changed to elseif
highest = advancedhighest;    %%% Added "level == advanced"   
end


% randomly select secret number between 1 and highest for level of play

secretNumber = floor(rand() * highest); %%% Took out +1   
                                        %%% It broke once but I can't
                                        %%% replicate it
                                       

% initialize number of guesses and User_guess

numOfTries = 0;  %%% Changed from 1 to 0 to get the correct number
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
if userGuess < 1 || userGuess > highest %%% Removed => so that the highest number was a valid guess

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber  %%% Changed from > so that the statement below was correct
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber, numOfTries); %%% Added numOfTries


fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');
end %%% Ended the while loop from line 81 because it was not there. I had to move it down here to get the gaame to work
end  % of guessing while loop

% end of game