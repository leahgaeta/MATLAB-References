function print_sum_vec(vec)
% Prints the persistent sum of values in vector
% Format of the call: print_sum_vec(vector_input)
% Created by Leah Gaeta for BU's ENG EK 125 course taught by Professor
% Stormy Attaway

persistent rowsum % declares the variable rowsum to be persistent

if isempty(rowsum)
    rowsum = 0;
end

rowsum = sum(vec) + rowsum;
fprintf('The current sum is %.2f\n', rowsum)
end

