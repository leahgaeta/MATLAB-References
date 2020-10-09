% Example modular program that calls local functions to gather offensive
% statistics for a baseball player during a regular or post season - Created
% by Leah Gaeta for Boston University's ENG EK 125 course taught by Professor
% Stormy Attaway

clear
clc

fprintf('This program will gather offensive statistics for a player, plot\n')
fprintf('the frequencies of these metrics, and calculate the batting average.\n')
fprintf('\n***\n\n')

[name, position] = getplayerinfo();
stat_mat = getstats();
print_stats(name, position, stat_mat)
stat_plot(name, stat_mat)

fprintf('\n***\n')
fprintf('This is the end of the program.\n')
newvar = input('Press any key to quit & close the program: ', 's');

clear
clc

%%% Local Functions %%%

function [n, p] = getplayerinfo()
% Prompts user input for player last name & position
% Format of the call: [name, pos] = getplayerinfo()
prmpt = sprintf('Given the following:\n 1 - Pitcher\n 2 - Catcher\n 3 - First Base\n 4 - Second Base\n 5 - Third Base\n 6 - Shortstop\n 7 - Left Field\n 8 - Center Field\n 9 - Right Field\n10 - Designated Hitter\nEnter the player''s integer position: ');
n = input('Enter the player''s last name: ', 's');
n = upper(n);
p = input(prmpt);
% Error check the input
while p < 1 || p > 10 || floor(p) ~= p
    p = input('Please enter a valid integer position number: ');
end
end

function s_mat = getstats()
% Prompts user input for player offensive stats, assumes integer input, and outputs a matrix
% Format of the call: stats_matrix = getstats()
s_mat = zeros(1,8);
s_mat(1) = input('Enter the number of plate appearances: ');
% Error check the input
while floor(s_mat(1)) ~= s_mat(1) || s_mat(1) < 0
    s_mat(1) = input('Enter a valid number of plate appearances: ');
end
s_mat(2) = input('Enter the number of walks: ');
% Error check the input
while floor(s_mat(2)) ~= s_mat(2) || s_mat(2) < 0
    s_mat(2) = input('Enter a valid number of walks (including hit by pitch & catcher''s interference): ');
end
s_mat(3) = input('Enter the number of strikeouts: ');
% Error check the input
while floor(s_mat(3)) ~= s_mat(3) || s_mat(3) < 0
    s_mat(3) = input('Enter a valid number of strikeouts: ');
end
s_mat(4) = input('Enter the number of sacrifice bunts and sac fly''s: ');
% Error check the input
while floor(s_mat(4)) ~= s_mat(4) || s_mat(4) < 0
    s_mat(4) = input('Enter a valid number of sacrifices: ');
end
s_mat(5) = input('Enter the number of singles hit: ');
% Error check the input
while floor(s_mat(5)) ~= s_mat(5) || s_mat(5) < 0
    s_mat(5) = input('Enter a valid number of singles: ');
end
s_mat(6) = input('Enter the number of doubles hit: ');
% Error check the input
while floor(s_mat(6)) ~= s_mat(6) || s_mat(6) < 0
    s_mat(6) = input('Enter a valid number of doubles: ');
end
s_mat(7) = input('Enter the number of triples hit: ');
% Error check the input
while floor(s_mat(7)) ~= s_mat(7) || s_mat(7) < 0
    s_mat(7) = input('Enter a valid number of triples: ');
end
s_mat(8) = input('Enter the number of homeruns hit: ');
% Error check the input
while floor(s_mat(8)) ~= s_mat(8) || s_mat(8) < 0
    s_mat(8) = input('Enter a valid number of homeruns: ');
end
end

function print_stats(na, po, sm)
% Prints the player's statistics
% Format of the call: print_stats(player_name, position, statistics_matrix)
avg = sum(sm(5:8))/(sm(1) - sm(2) - sm(4));
obp = (sm(2) + sum(sm(5:8)))/sm(1);
switch po
    case {1}
        pos = 'Pitcher';
    case {2}
        pos = 'Catcher';
    case {3}
        pos = 'First Base';
    case {4}
        pos = 'Second Base';
    case {5}
        pos = 'Third Base';
    case {6}
        pos = 'Shortstop';
    case {7}
        pos = 'Left Field';
    case {8}
        pos = 'Center Field';
    case {9}
        pos = 'Right Field';
    otherwise
        pos = 'Designated Hitter';
end
fprintf('\nWhile at %s, %s had a batting average of %.3f and \n', pos, na, avg)
fprintf('an on base percentage of %.3f.\n', obp)
end

function stat_plot(pname, stmat)
% Plots the player's offensive stats as a horizontal bar chart
% Format of the call: stat_plot(player_name, stats_matrix)
width = 0.6;
barh(stmat(2:8), width, 'FaceColor', [0 0.5 0])
title_format = sprintf('%s''S OFFENSIVE STATISTICS OVER %d PLATE APPEARANCES', pname, stmat(1));
title(title_format)
yticklabels({'Walks','Strikeouts','Sacrifices','Singles', 'Doubles', 'Triples', 'Homeruns'})
end