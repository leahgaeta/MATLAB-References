% Example of while & nested for loops - Created by Leah Gaeta for Boston
% University's ENG EK 125 course taught by Professor Stormy Attaway

clear
clc

fprintf('This program will draw a rectangle with a size of your choosing!\n')
pause(2)
fprintf('You''ll first be asked to input the dimensions, then the type of\n')
fprintf('character you want to draw with.\n\n***\n\n')
pause(3)


% Create the rectangle
fprintf('All dimensions entered must be between 3 - 10 (inclusive) integer units long.\n')
pause(2)
fprintf('(Note that non-integers will be rounded to the nearest integer.)\n\n')
pause(2)

% Create base measurement & error check
base = input('Enter length of the base: ');
while base < 3 || base > 10
    base = input('See the directions above. Please enter a valid length for the base: ');
end
base = round(base);

% Create height measurement & error check
height = input('Enter length of the height: ');
while height < 3 || height > 10
    height = input('See the directions above. Please enter a valid length for the height: ');
end
height = round(height);

% Select symbol to "draw" with from a list & error check
pause(1)
fprintf('\nThese are the possible symbols to create the rectangle with:\n')
pause(1)
sym_list = '  #  @  !  %  &  *  ^  +  =  :';
fprintf('%s\n', sym_list)
pause(2)
sym = input('From the given list, enter a symbol to draw with: ', 's');
while sum(find(sym_list == sym)) == 0
    sym = input('That symbol isn''t on the list. Please enter a correct symbol to draw with: ', 's');
end


% Now let's draw
fprintf('\nGreat! Now let''s get to drawing a %dx%d rectangle with %c''s.\n\n', base, height, sym)
pause(2)
for i = 1:height
    for j = 1:base
        fprintf('%3c', sym)
    end
    pause(1)
    fprintf('\n')
end

fprintf('\nIt looks beautiful, doesn''t it?\n')
pause(2)
fprintf('Recommendation: keep practicing uses for nested for loops...\n')
pause(2)
fprintf('Maybe try drawing a triangle???\n')
pause(2)

% End of program
clear
fprintf('\n***\nThis is the end of the program.\n***\n')
pause(2)
clc
