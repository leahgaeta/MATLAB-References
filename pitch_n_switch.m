% Example program of using a switch statement to classify and count pitches
% thrown by a single pitcher - Created by Leah Gaeta for Boston
% University's ENG EK 125 course taught by Professor Stormy Attaway

clear
clc

% Program introduction & instructions
fprintf('This program will implement a switch statement to classify\n')
fprintf('baseball pitches thrown by a single pitcher during a game.\n\n')
pause(3)
fprintf('...\n')
fprintf('These are the type of pitches that can be thrown with their codes:\n')
fprintf('%-7s %-20s\n', 'Code', 'Pitch Type')
fprintf('%-7s %-20s\n', 'CH', 'Changeup')
fprintf('%-7s %-20s\n', 'FO', 'Forkball')
fprintf('%-7s %-20s\n', 'SC', 'Screwball')
fprintf('%-7s %-20s\n', 'FT', 'Two-Seam Fastball')
fprintf('%-7s %-20s\n', 'CU', 'Curveball')
fprintf('%-7s %-20s\n', 'FA', 'Four-Seam Fastball')
fprintf('%-7s %-20s\n', 'SI', 'Sinker')
fprintf('%-7s %-20s\n', 'FC', 'Cutter')
fprintf('%-7s %-20s\n', 'KN', 'Knuckleball')
fprintf('%-7s %-20s\n', 'SL', 'Slider')
fprintf('%-7s %-20s\n', 'KC', 'Knuckle-Curve')
fprintf('%-7s %-20s\n', 'FS', 'Splitter')
fprintf('...\n')
pause(5)
fprintf('\nFrom this list, you''ll input the type of pitch thrown using the\n')
fprintf('codes above. After the last pitch is thrown type ''STOP'' to finish\n')
fprintf('the data collection.\n\n')
move_on = input('Type any key to continue: ', 's');
clc

% Initialize counting of pitches
offspeed_count = 0;
fastball_count = 0;
total_pitches = 0;
unclassified = 0;

% Initialize first input statement
fprintf('These are the type of pitches that can be thrown with their codes:\n')
fprintf('...\n')
fprintf('%-7s %-20s\n', 'Code', 'Pitch Type')
fprintf('%-7s %-20s\n', 'CH', 'Changeup')
fprintf('%-7s %-20s\n', 'FO', 'Forkball')
fprintf('%-7s %-20s\n', 'SC', 'Screwball')
fprintf('%-7s %-20s\n', 'FT', 'Two-Seam Fastball')
fprintf('%-7s %-20s\n', 'CU', 'Curveball')
fprintf('%-7s %-20s\n', 'FA', 'Four-Seam Fastball')
fprintf('%-7s %-20s\n', 'SI', 'Sinker')
fprintf('%-7s %-20s\n', 'FC', 'Cutter')
fprintf('%-7s %-20s\n', 'KN', 'Knuckleball')
fprintf('%-7s %-20s\n', 'SL', 'Slider')
fprintf('%-7s %-20s\n', 'KC', 'Knuckle-Curve')
fprintf('%-7s %-20s\n', 'FS', 'Splitter')
fprintf('...\n\n')
pitch = input('Enter the code for the pitch just thrown: ', 's');
pitch = upper(pitch);
clc

% Check in while loop
while strcmp(pitch, 'STOP') == 0
    switch pitch
        case {'CH', 'FO', 'SC', 'CU', 'KN', 'SL', 'KC'}
            offspeed_count = offspeed_count + 1;
            total_pitches = total_pitches + 1;
        case {'FT', 'FA', 'SI', 'FC', 'FS'}
            fastball_count = fastball_count + 1;
            total_pitches = total_pitches + 1;
        otherwise
            unclassified = unclassified + 1;
            total_pitches = total_pitches + 1;
    end
    fprintf('...\n')
    fprintf('%-7s %-20s\n', 'Code', 'Pitch Type')
    fprintf('%-7s %-20s\n', 'CH', 'Changeup')
    fprintf('%-7s %-20s\n', 'FO', 'Forkball')
    fprintf('%-7s %-20s\n', 'SC', 'Screwball')
    fprintf('%-7s %-20s\n', 'FT', 'Two-Seam Fastball')
    fprintf('%-7s %-20s\n', 'CU', 'Curveball')
    fprintf('%-7s %-20s\n', 'FA', 'Four-Seam Fastball')
    fprintf('%-7s %-20s\n', 'SI', 'Sinker')
    fprintf('%-7s %-20s\n', 'FC', 'Cutter')
    fprintf('%-7s %-20s\n', 'KN', 'Knuckleball')
    fprintf('%-7s %-20s\n', 'SL', 'Slider')
    fprintf('%-7s %-20s\n', 'KC', 'Knuckle-Curve')
    fprintf('%-7s %-20s\n', 'FS', 'Splitter')
    fprintf('...\n\n')
    pitch = input('Enter the code for the pitch just thrown: ', 's');
    pitch = upper(pitch);
    clc
end

% Gather extra pertinent information
clc
fprintf('Now that all pitch information has been processed\n')
innings = input('Enter the number of innings thrown: ');
last_name = input('And finally, enter the pitcher''s last name: ', 's');

% Print all relevant information
pause(2)
clc
fprintf('...\n')
pause(1)
if unclassified == 0
    fprintf('\nIn today''s game %s threw %d pitches through %.1f innings.\n', last_name, total_pitches, innings)
    fprintf('%d of the pitches were fastballs, while %d were offspeed.\n', fastball_count, offspeed_count)
elseif unclassified == 1
    fprintf('\nIn today''s game %s threw %d pitches through %.1f innings.\n', last_name, total_pitches, innings)
    fprintf('%d of the pitches were fastballs, while %d were offspeed.\n', fastball_count, offspeed_count)
    fprintf('(Note that %d pitch was unclassified.)\n', unclassified)
else
    fprintf('\nIn today''s game %s threw %d pitches through %.1f innings.\n', last_name, total_pitches, innings)
    fprintf('%d of the pitches were fastballs, while %d were offspeed.\n', fastball_count, offspeed_count)
    fprintf('(Note that %d pitches were unclassified.)\n', unclassified)
end
fprintf('...\n\n');

end_me = input('Press any key to quit the program: ', 's');
clear
clc

% End of program
fprintf('\n***\nThis is the end of the program.\n***\n')
pause(4)
clc