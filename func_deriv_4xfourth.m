function [fd, varargout] = func_deriv_4xfourth(num)
% Returns the derivates of 4x^4. If 3 output arguments, returns the first,
% second, and third derivatives. If 2 output arguments, returns the first
% and second derivatives. If 1 output argument, returns only the first
% derivative. All evaluated at x (the input)
% Format of the call: func_deriv_4xfourth(number)

fd = 4 * 4 * num.^3;

if nargout == 2 || nargout == 3
    varargout{1} = 4 * 4 * 3 * num.^2;
end

if nargout == 3
    varargout{2} = 4 * 4 * 3 * 2 * num;
end
end

% Example function with variable output arguments - Created by Leah Gaeta
% for Boston University's ENG EK 125 course taught by Professor Stormy
% Attaway