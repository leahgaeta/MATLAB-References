% Example program of creating a struct and then writing the contents of the
% struct in a nice format to sandlot.txt - Created by Leah Gaeta for Boston
% University's ENG EK 125 course taught by Professor Stormy Attaway

clear
clc

fprintf('This program will create a struct called roster and then write the\n')
fprintf('contents of the struct in a nice format to sandlot.txt.\n\n')
pause(3)
fprintf('Remember, when creating structs always pre-allocate by filling in the\n')
fprintf('last ''row'' first!\n')
pause(3)

roster(9) = struct('Order', 9, 'Name', "Tommy Timmons", 'Player_Info', struct('Position', '3B', 'Nickname', 'Repeat'));
roster(8) = struct('Order', 8, 'Name', "Scott Smalls", 'Player_Info', struct('Position', 'LF', 'Nickname', 'Smalls'));
roster(7) = struct('Order', 7, 'Name', "Michael Palledorous", 'Player_Info', struct('Position', 'RF', 'Nickname', 'Squints'));
roster(6) = struct('Order', 6, 'Name', "Timmy Timmons", 'Player_Info', struct('Position', '1B', 'Nickname', 'Timmy'));
roster(5) = struct('Order', 5, 'Name', "Hamilton Porter", 'Player_Info', struct('Position', 'C', 'Nickname', 'Ham'));
roster(4) = struct('Order', 4, 'Name', "Kenny DeNunez", 'Player_Info', struct('Position', 'P', 'Nickname', 'Kenny'));
roster(3) = struct('Order', 3, 'Name', "Bertram Weeks", 'Player_Info', struct('Position', '2B', 'Nickname', 'Grover'));
roster(2) = struct('Order', 2, 'Name', "Benny Rodriguez", 'Player_Info', struct('Position', 'CF', 'Nickname', 'The Jet'));
roster(1) = struct('Order', 1, 'Name', "Alan McClennan", 'Player_Info', struct('Position', 'SS', 'Nickname', 'Yeah-Yeah'));

fprintf('\nWe have the following struct, roster:\n')
disp(roster)
pause(2)
fprintf('Note that the fieldnames ''Order'' is an integer, ''Name'' is a string, ''Player_Info''\n')
fprintf('is a struct, ''Position'' is a character vector, and ''Nickname'' is a character vector.\n\n')
pause(3)
fprintf('The struct essentially looks like this...\n')
pause(1)
fprintf('%-7s %-20s %10s\n', 'Order', 'Name', 'Player_Info')
fprintf('%-24s %-9s %-10s\n', ' ', 'Position', 'Nickname')
for i = 1:length(roster)
    pause(1)
    fprintf('%-5d %-22s %-5s %-10s\n', roster(i).Order, roster(i).Name, roster(i).Player_Info.Position, roster(i).Player_Info.Nickname)
end

fprintf('\nBeautiful! Now let''s write to the file sandlot.txt.\n')
pause(1)
fprintf('We''ll need a file identifier using fopen(), pass the argument ''w'' to\n')
fprintf('write to the file using fprintf(), and then open sandlot.txt to see if it worked!\n')
pause(2)
fprintf('And just for fun, we''ll write the names in the format: last, first\n')

fid = fopen('sandlot.txt', 'w');
if fid == -1
    fprintf('\nUnable to create and write to sandlot.txt at this time. Check the program.\n')
else
    fprintf('\nNow writing to sandlot.txt...\n')
    fprintf(fid, '%-7s %-20s %10s\n', 'Order', 'Name', 'Player_Info');
    fprintf(fid, '%-24s %-9s %-10s\n', ' ', 'Position', 'Nickname');
    for i = 1:length(roster)
        [first, last] = strtok(roster(i).Name);
        newname = strcat(last, ", ", first);
        fprintf(fid,'%-5d %-22s %-5s %-10s\n', roster(i).Order, newname, roster(i).Player_Info.Position, roster(i).Player_Info.Nickname);
    end
    fprintf('\nWriting complete. Now go and open sandlot.txt to see if it worked!\n')
    pause(2)
    fprintf('Maybe try writing something of your own!\n')
end
pause(2)

fid = fclose(fid);
if fid == -1
    fprintf('\nUnable to successfully close sandlot.txt. Check the program.\n')
end

% End of program
fprintf('\n***\nThis is the end of the program.\n***\n')
pause(4)
clear
clc