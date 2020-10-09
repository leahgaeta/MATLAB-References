% Example modular program that calls local stub functions to gather offensive
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
n = 'LAST NAME';
p = 3;
end

function s_mat = getstats()
% Prompts user input for player offensive stats, assumes integer input, and outputs a matrix
% Format of the call: stats_matrix = getstats()
s_mat = 20:-2:8;
end

function print_stats(na, po, sm)
% Prints the player's statistics
% Format of the call: print_stats(player_name, position, statistics_matrix)
avg = 0.401;
obp = 0.679;
po = 0;
sm = 0;
pos = 'FIRST BASE';
fprintf('\nWhile at %s, %s had a batting average of %.3f and \n', pos, na, avg)
fprintf('an on base percentage of %.3f.\n', obp)
end

function stat_plot(pname, stmat)
% Plots the player's offensive stats as a horizontal bar chart
% Format of the call: stat_plot(player_name, stats_matrix)
barh(2:8)
title_format = sprintf('%s''S OFFENSIVE STATISTICS OVER %d PLATE APPEARANCES', pname, stmat(1));
title(title_format)
end