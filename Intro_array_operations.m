% Introduction to vector and matrix operations in MATLAB - Created by Leah
% Gaeta for Boston University's ENG EK 125 course taught by Professor
% Stormy Attaway

clear
clc

% Welcome message
fprintf('Welcome to this introduction to vector and matrix\n')
disp('operations in MATLAB!')
disp('...')
pause(3)
fprintf('\nPause the program at any time while running by pressing the blue\n')
fprintf('pause button above and then the green continue button when ready!\n')
pause(5)

% Vector Operations
clc
vec = 10:19;
fprintf('Given the following vector:\n\n')
pause(2)
disp('vec =')
pause(1)
disp(vec)
pause(2)
fprintf('\nHere''s what the following operations accomplish:\n')
pause(2)
fprintf('\nvec(3:5) results in\n')
pause(1)
disp(vec(3:5))
pause(2)
fprintf('\nvec(5:end - 1) produces\n')
pause(1)
disp(vec(5:end - 1))
pause(2)
fprintf('\nlength(vec) gives us\n')
pause(1)
disp(length(vec))
pause(2)
fprintf('\nfind(vec > 14) produces\n')
pause(1)
disp(find(vec > 14))
pause(2)
disp('Remember that find() returns the indices!')
pause(2)
fprintf('\nfliplr(vec) will flip left to right and return\n')
pause(1)
disp(fliplr(vec))
pause(2)
fprintf('\nnumel(vec) returns the number of elements and gives\n')
disp(numel(vec))
pause(5)

% Matrix Operations
clear
clc
mat = randi([5, 25], 3, 4);
fprintf('Now given the following matrix:\n')
pause(2)
fprintf('\nmat =\n')
pause(1)
disp(mat)
pause(2)
fprintf('\nfliplr(mat) produces\n')
pause(1)
disp(fliplr(mat))
pause(2)
fprintf('\nflipud(mat) creates\n')
pause(1)
disp(flipud(mat))
pause(2)
fprintf('\nrot90(mat) gives\n')
pause(1)
disp(rot90(mat))
pause(2)
fprintf('\nmat'' transposes the matrix\n')
pause(1)
disp(mat')
pause(2)
fprintf('\nmat(2, 2:3) will give\n')
pause(1)
disp(mat(2, 2:3))
pause(2)
fprintf('\nmat(2:3, 2) on the other hand\n')
pause(1)
disp(mat(2:3, 2))
pause(2)
fprintf('\nfind(mat > 12) makes\n')
pause(1)
disp(find(mat > 12))
pause(2)
disp('A column vector of which elements are > 12, numbered columnwise')
pause(2)
fprintf('\nrepelem(mat, 2, 3) repeats the elements\n')
pause(1)
disp(repelem(mat, 2, 3))
pause(2)
fprintf('\nrepmat(mat, 2, 3) makes a mega matrix!\n')
pause(1)
disp(repmat(mat, 2, 3))
pause(5)
clc
fprintf('Here''s the matrix again:\n')
pause(2)
fprintf('\nmat = \n')
pause(1)
disp(mat)
pause(2)
fprintf('If we do mat > 15, we get\n')
pause(1)
disp(mat > 15)
pause(2)
disp('A matrix of logical true & false values!')
pause(2)
fprintf('\nAnd if we do mat > 15 | mat == 12, we''ll get\n')
pause(2)
disp(mat > 15 | mat == 12)
pause(2)
disp('Notice that we only need one | to signify ''or'' when comparing matrices.')
pause(5)



% Matrix & Scalar Multiplication
clear
clc
fprintf('Let''s go over matrix & scalar multiplication!\n')
fprintf('...\n\n')
pause(2)
fprintf('Now we''re given the following matrices\n')
mat1 = [1 2 3; 4 5 6; 7 8 9];
mat2 = [1 2 3; 3 2 1];
pause(2)
fprintf('\nmat1 = \n')
pause(1)
disp(mat1)
pause(2)
fprintf('\nmat2 = \n')
pause(1)
disp(mat2)
pause(2)
fprintf('\nIf we do mat1 * mat2 we''ll get an error because the inner dimensions don''t match.\n')
pause(3)
fprintf('\nBut if we do mat2 * mat1, the inner dimensions match and we get: \n')
pause(2)
disp(mat2 * mat1)
pause(3)
disp('Notice that we now get a 2x3 matrix!')
pause(3)
fprintf('\nNow let''s say we want to multiply each element in mat2 by 3.\n')
pause(3)
fprintf('We can''t simply do mat2 * 3...\n')
pause(3)
fprintf('In order to do scalar multiplication, we need a period before the asterisk\n')
pause(3)
fprintf('\nFor example, mat2 .* 3 will give us:\n')
pause(2)
disp(mat2 .* 3)
pause(3)
fprintf('Similar pre-cautions will need to be taken for vectors as well!')
pause(2)
fprintf('\nNow, practice on your own with row and column vectors of random lengths!\n') 
pause(5)

% End of program
clear
clc
fprintf('***\nThis is the end of the program.\n***\n')
pause(2)
clc