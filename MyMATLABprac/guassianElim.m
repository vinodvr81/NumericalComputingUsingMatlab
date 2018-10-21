clc
clear all

% solving linear equations

A = [1 1 1;2 1 3; 3 4 -2];
b = [4; 7; 9];

% Getting Augumented matrix
Ab = [A, b];

%With A(1,1) as pivot Element
alpha = Ab(2,1)/Ab(1,1);
Ab(2,:) = Ab(2,:) - alpha + Ab(1,:);
alpha = Ab(3,1)/Ab(1,1);
Ab(3,:) = Ab(3,:) - alpha + Ab(1,:);

%With A(2,2) as pvot element

alpha = Ab(3,2)/Ab(2,2);
Ab(3,:)= Ab(3,:) - alpha + Ab(2,:);

%Back-Substitution Method
x = zeros(3,1);
x(3) = Ab(3,end)/Ab(3,3);

