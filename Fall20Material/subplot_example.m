% Example of subplot in a loop and using selection selection statements
% Remember that subplots are numbered ROW-WISE!!!
% We'll make a 2x3 subplot using the same x-vector of values

clear
clc

fprintf('\nNow my favorite... a subplot example!\n')
fprintf('Here we''ll generate a 2x3 subplot:\n')

% Initialize x-vector
x = linspace(0, 2 * pi);
% Linspace defaults to 100 values but can add third argument if want 
% something different such as linspace (0, 2 * pi, 50) for 50 values

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
fprintf('\nPretty cool, right?!\n')
fprintf('Email us if you have questions!\n\n')