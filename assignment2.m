%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 2:
%
% Submitted by: Alex Shaver
%
% Due: September 15, 2017

%% Chapter 1 Exercises
%
% 1.)Create a variable to store the atomic weight of copper (63.55).

Cu= 63.55

% 2.) Create a variable myage and store your age in it. Subtract two from the value of the
% variable. Add one to the value of the variable. Observe the Workspace Window and
% Command History Window as you do this.

myage= 21
(myage-2)+1

% 3.) Use the built-in function namelengthmax to find out the maximum number of
% characters that you can have in an identifier name under your version of
% MATLAB.

namelengthmax
% ans= 63

% 4.) Create two variables to store a weight in pounds and ounces. Use who and whos
% to see the variables. Clear one of them and then use who and whos again.

lbs= 1
oz= (lbs*16)
who
whos
clear lbs
who 
whos
% lbs was no longer included in the who/whos information 

% 5.) Use intmin and intmax to determine the range of values that can be stored in the
% types uint32 and uint64.

intmin('uint32')
intmin('uint64')

intmax('uint32')
intmax('uint64')

% 6.) Store a number with a decimal place in a double variable (the default). Convert the
% variable to the type int32 and store the result in a new variable.

x= 2.7
y= int32(x)

% 11.) Create a variable pounds to store a weight in pounds. Convert this to kilograms and 
% assign the result to a variable kilos. The conversion factor is 1 kilogram = 2.2 pounds.

pounds= 1
kilos= (pounds*2.2)

% 12.) Create a variable ftemp to store a temperature in degrees Fahrenheit (F). Convert 
% this to degrees Celsius (C) and store the result in a variable ctemp. The conversion factor is C=(F-32) * (5/9).

ftemp= 212
ctemp= (ftemp-32)* (5/9)

% 13.) Find another quantity to convert from one system of units to another.

ctemp= 0
ktemp= (ctemp+ 273.15)
% converts celcius to kelvins

% 14.) The function sin calculates and returns the sine of an angle in radians, and the
% function sind returns the sine of an angle in degrees. Verify that calling the sind function and passing 90 degrees to it results in 
% 1. What argument would you pass to sin to obtain the result of 1?

sind(90)
sin(.5*pi)

% 15.) The combined resistance RT of three resistors R1, R2, and R3 in parallel is given by RT= 1
% R1 þR1 þR1 123
% Create variables for the three resistors and store values in each, and then calculate
% the combined resistance.

r1=2
r2=4 
r3=6
R= 1/((1/r1)+(1/r2)+(1/r3))

% 24.) What would be the result of the following expressions?
% 'b' >= 'c'- 1       % Returns a 1 b=98 c=99 so they are equal, statement
%                       is true
% 3 == 2+ 1           % Returns a 1 3==2 gets 0, then adds 1
% (3 == 2)+ 1         % Returns a 1 
% xor(5 < 6, 8 > 4)   % Returns a 0, xor((5>6),(8>4)) returns a 1

% 25.) Create two variables x and y and store numbers in them. Write an expression 
% that would be true if the value of x is greater than 5 or if the value of y is less 
% than 10, but not if both of those are true.

x= 7
y= 2
xor(x> 5, y< 10)
% 26.) Use the equality operator to verify that 3*10^5 is equal to 3e5.

(3*10^5)== (3e5)

% 27.) Use the equality operator to verify the value of log10(10000)

log10(10000)== 4

%% Chapter 2 Exercises

% 1.)  Using the colon operator, create the following row vectors:
% 234567 
% 1.1000 1.3000 1.5000 1.7000 
% 8642

[2:7]
[1.1: .2: 1.7]
[8: -2: 2]

% 2.) Give the MATLAB expression that would create a vector (in a variable called vec) 
% of 50 elements that range, equally spaced, from 0 to 2pi:

vec= linspace(0, (2*pi), 50)

% 3.)Write an expression using linspace that will result in the same as 2: 0.2: 3.

linspace(2, 3, 6)

% 4.) Using the colon operator and also the linspace function, create the following row
% vectors:
% -5 -4 -3 -2 -1 
% 579 
% 864

[-5:-1]
linspace(-5, -1, 5)
[5: 2: 9]
linspace(5, 9, 3)
[8: -2: 4]
linspace(8, 4, 3)

% 6.) Using the colon operator and the transpose operator, create a column vector that has the values -1 to 1 in steps of 0.5.

[-1: .5: 1]'

% 7.) Write an expression that refers to only the odd-numbered elements in a vector, regardless of the length of the vector. 
% Test your expression on vectors that have both an odd and an even number of elements.


a= [1 2 3 4 5 6 7 8 9 10]
a(1: 2: end)
a(2: 2: end)

% 8.) Find an efficient way to generate the following matrix: 
% mat = 7 8 9 10 
%       12 10 8 6
% refer to the element in the first row, third column
% refer to the entire second row
% refer to the first two columns.

mat= [7:10; 12: -2: 6]
mat(1, 3, 1)
mat(2,:)
mat(;, 1:2)

% 9.) Generate a 2 x 4 matrix variable mat. Verify that the number of elements is the product of the number of rows and columns.

mat= [1:4; 5:8]

% 10.) Generate a 2 x 4 matrix variable mat. Replace the first row with 1:4. Replace the third column (you decide with which values).

mat=[5 6 7 8; 10 11 12 13]
mat(1,:)= 1:4

% 12.) Create a variable rows that is a random integer in the inclusive range from 1 to 5. 
% Create a variable cols that is a random integer in the inclusive range from 1 to 5. 
% Create a matrix of all zeros with the dimensions given by the values of rows and cols.

rows= floor((5-1).*rand(1) + 1)
cols= floor((5-1).*rand(1) + 1)
zmatrix = zeros(row,col)

% 23.) Find the sum of 3+5+7+9+11.

x=[3 5 7 9 11]
sum(x)

% 26.) Find the following sum by first creating vectors for the numerators and denominators:
% (1/3)+ (5/2)+ (7/3)+ (9/4)

numerators= [1 5 7 9]
denominators= [3 2 3 4]
sum(numerators)+ sum(denominators)

% 30.) Create a vector of five random integers, each in the inclusive range from -10 to 10. 
% Perform each of the following:
% subtract 3 from each element 
% count how many are positive
% get the absolute value of each element
% find the maximum
 
vector= randi([-10 10], 1, 5)
subtract= vector-3
numpos= sum(vector> 0)
absoluteValue= abs(vector)
maximumValue= max(vector)

% 31.) Create a 3 x 5 matrix. Perform each of the following:
% Find the maximum value in each column.
% Find the maximum value in each row.
% Find the maximum value in the entire matrix.

random= randi(15, 3, 5)
maxColum= max(random)
maxRow= max(rot90(random))
randomMax= max(max(random))

%% Chapter 3 Exercises

% 1.)Write a simple script that will calculate the volume of a hollow sphere,
% (4pi/3)((ro)^3-(ri)^3)
% Where ri is the inner radius and ro is the outer radius. Assign a value to a 
% variable for the inner radius, and also assign a value to another variable for 
% the outer radius. Then, using these variables, assign the volume to a third variable. 
% Include comments in the script.

ri= 25
% ri represents the inner radius
ro= 45
% ro represents the outer radius
volume= 4*pi*(ro^3-ri^3)/3
% This is the formula for the volume of a hollow sphere

% 4.) The input function can be used to enter a vector, such as:
% >> vec = input('Enter a vector: ')
% Enter a vector: 4 : 7
% vec =
% 4567
% Experiment with this and find out how the user can enter a matrix.

matrix= input('Enter a matrix')
% Enter a matrix[4:7; 9:12]
% matrix =
%
%     4     5     6     7
%     9    10    11    12

% 6.) Experiment, in the Command Window, with using the fprintf function for real
% numbers. Make a note of what happens for each. Use fprintf to print the real number 12345.6789
% without specifying any field width
% in a field width of 10 with 4 decimal places
% in a field width of 10 with 2 decimal places
% in a field width of 6 with 4 decimal places
% in a field width of 2 with 4 decimal places.

fprintf('12345.6789\n')
% diplays the number and starts a new line
fprintf('%10.4f\n', 1234.5678)
% displays up to 10 numbers with 4 decimal places 
fprintf('%10.2f\n', 1234.5678)
% displays up to 10 numbers with 2 decimal places
fprintf('%6.4f\n', 1234.5678)
% displays all significant figures before the decimal place up to 6 with 4 decimal places
fprintf('%2.4f\n', 1234.5678)
% displays the numbers befroe the decimal and 4 decimal places 
% all of them introduce a new line with the \.n

% 8.) In the metric system, fluid flow is measured in cubic meters per second (m3/s).
% A cubic foot per second (ft3/s) is equivalent to 0.028 m3/s. Write a script titled flowrate 
% that will prompt the user for flow in cubic meters per second and will print the equivalent flow rate 
% in cubic feet per second. Here is an example of running the script. Your script must produce output in 
% exactly the same format as this:
% >> flowrate
% Enter the flow in m^3/s: 15.2
% A flow rate of 15.200 meters per sec is equivalent to 542.857 feet per sec

flowrateInMPS= input('Enter the flow in m^3 per second')
fprintf('A flow rate of %.3f cubic meters per second\n',flowrateInMPS)
fprintf('is equivalent to %.3f cubic feet per second\n',flowrateInMPS/.028)

% 13.) In engineering mechanics, a vector is a set of numbers that indicate both magnitude and direction. Units such as velocity and 
% force are vector quantities. An example of a vector could be <2.34, 4.244, 5.323> meters/second. This vector describes the velocity of 
% a particle at a certain point in three-dimensional space, <x,y,z>. In solving problems related to vectors, 
% it?s handy to know the unit vector of a certain measurement. A unit vector is a vector that has a certain direction, but a 
% magnitude of 1. The equation for a unit vector in three-dimensional space is:
% u= <x, y, z>/ (sqrt(x^2+y^2+z^2))
% Write a script that prompts the user for x, y, and z values, and then calculates the
% unit vector.

x= input('Enter x value')
y= input('Enter y value')
z= input('Enter z value')
vector= [x y z]
% makes x, y, and z into a vector
squaredVector= (vector).^2
% squares original vector
sumSquaredVector= sum(squaredVector)
% calculates the sum of the squared vector
magnitude= sumSquaredVector^.5
% calculates square root of sumSquaredVector
u= vector/magnitude








