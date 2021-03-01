% This is a script, this explains what the program does

fprintf('Welcome! This is the beginning of a program.\n\n')

var = input('Please input a number: ');

vec = input('Thanks! Now please enter a vector: ');

fprintf('This script will use a function called myfunction() on your number and vector.\n')

var_changed = myfunction(var);
vec_changed = myfunction(vec);

fprintf('The old number was %.2f. Your new number is %.2f\n', var, var_changed)
fprintf('This was your old vector:\n')
disp(vec)
fprintf('Here''s the new vector:\n')
disp(vec_changed)

fprintf('\nHmmm, what do you think the function that this script calls does?\n')
