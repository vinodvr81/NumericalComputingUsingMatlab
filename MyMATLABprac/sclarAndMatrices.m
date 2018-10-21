x = [1,2,3,4,5];                          % Single array vector
y = [1,2,3,4,5;2,3,4,5,6;3,4,5,6,7];      % matrices

c = y';                                   % transpose of a matrix
d = c(2,3);                               % accessing indicidual elements

e = size(y);                              % Matrix size


% Colon notation

z = [1:3;2:4;3:5];                       % range

a = [];                                  %empty matrix

h = [1:2:8;2:2:9;3:2:10];                % range way of defining matrix 


% Array Building functions

ad = ones(3,3);                          % Build m*n matrix of 1's
df = zeros(4,4);                         % Build m*n matrix of 0's

gh = eye(4);                             % Identity Matrix
jk = diag(z);                            % Diagnal elements of z

th = rand(3,4);
yt = randn(4,5);

io = magic(3);

ero = hilb(4);                          % hilbert Matrix