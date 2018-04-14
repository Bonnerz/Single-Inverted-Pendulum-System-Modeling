clear all;clc
A=[0 1 0 0;0 0 -10 0;0 0 0 1;0 0 20 0];
B=[0;1;0;-1];
C=[1 0 0 0];
rct=rank(ctrb(A,B));
rob=rank(obsv(A,C));
%可控性判断
if rct==4
    disp('The system is controllability');
else
    disp('The system is not controllability');
end
%可观测性判断
if rob==4
    disp('The system is observability');
else
    disp('The system is not observability');
end

P=[-6 -6.6 -7 -7.5];
K=place(A,B,P);
disp('The feedback matrix is');
disp(K);

A1=A';
C1=C';
P=[-20 -21 -22 -23];
G1=place(A1,C1,P);
G=G1';
disp('The state matrix is');
disp(G);