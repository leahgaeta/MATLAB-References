% Introduction to plotting in MATLAB - Created by Leah Gaeta for Boston
% University's ENG EK 125 course taught by Professor Stormy Attaway

clear
clc

fprintf('You''re about to see the plots created in this script!\n')
pause(2)
fprintf('Take a look at the script to see how these figures were generated.\n')
fprintf('...\n')
pause(2)

% Initialize x-vector
x = linspace(0, 2 * pi);
% Linspace defaults to 100 values but can add third argument if want 
% something different such as linspace (0, 2 * pi, 50) for 50 values

% Normal plot example
fprintf('\nFirst, a simple sine plot\n')
figure
plot(x, sin(x), 'bo') % x values, y values, then color/type
title('Example Title')
xlabel('x-axis label')
ylabel('y-axis label')
axis([0 2 * pi -2 2]) 
% If don't want default axes, need to pass a vector to format
% Custom axes format means [min_x max_x min_y max_y]
pause(5)


% Superimposed plot example
fprintf('\nNow, a superimposed plot with sine and cosine\n')
figure
plot(x, sin(x), 'bo') 
% x values, y values, then color/type (blue circles here)
title('Example Title')
xlabel('x-axis label')
ylabel('y-axis label')
axis([0 2 * pi -2 2])
hold on % necessary for superimposing plots
plot(x, cos(x), 'md') % magenta diamonds here
legend('sin(x)', 'cos(x)', 'location', 'best') 
% pass correct order to legend, can also adjust location
hold off % necessary when not plotting on the same image again
pause(5)


% Example of subplot in a loop and using selection selection statements
% Remember that subplots are numbered ROW-WISE!!!
% We'll make a 2x3 subplot using the same x-vector of values
fprintf('\nNow my favorite... a subplot example!\n')
fprintf('Here we''ll generate a 2x3 subplot:\n')
figure
for i = 1:6

    if i == 1
        mark_color = 'b'; % blue
        y = sin(x);
        grph = 'sin(x)';
    elseif i == 2
        mark_color = 'r'; % red
        y = cos(x);
        grph = 'cos(x)';
    elseif i == 3
        mark_color = [0 0.5 0]; % dark green, use vector from rgb
        y = tan(x);
        grph = 'tan(x)';
    elseif i == 4
        mark_color = 'c'; % cyan
        y = -sin(x);
        grph = '-sin(x)';
    elseif i == 5
        mark_color = 'm'; % magenta
        y = -cos(x);
        grph = '-cos(x)';
    else
        mark_color = 'g'; % bright green (don't recommend this color)
        y = -tan(x);
        grph = '-tan(x)';
    end
    
    custom_title = sprintf('Subplot #%d: %s', i, grph);
    % You'll learn about sprintf in text manipulation later but also look
    % up the documentation!
    subplot(2, 3, i)
    % list dimensions first, then which plot filling in (hence i)
    plot(x, y, ':', 'color', mark_color)
    title(custom_title)
    xlabel('x-axis label')
    ylabel('y-axis label')
    axis([0 2 * pi -2 2])
    hold on
end
hold off
pause(5)
disp('Pretty cool, right?!')
pause(3)


% End of program
clear
clc
fprintf('\n***\nThis is the end of the program.\n***\n')
pause(2)
clc