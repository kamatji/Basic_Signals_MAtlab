clc;
clear all;
close all;
x=zeros(1,17)
n=-8:8
% impulse at 4
for i=1:17
    if n(i)==4
        x(i)=1
    else
        x(i)=0
    end;
end;
subplot(3,2,1);
stem(n,x);

%unit step function
for i=1:17
    if n(i)>=0
        x(i)=1
    else
        x(i)=0
    end;
end;
subplot(3,2,2);
stem(n,x);
% ramp function
for i=1:17
    if n(i)>=0
        x(i)=i
    else
        x(i)=-i
    end;
end;
subplot(3,2,3);
stem(n,x);

% discrete cos function
Ts=1/10;
t=-1:Ts:1;
y=cos(2*pi*t);
subplot(3,2,4);
stem(t,y);
%discrete sin function
Ts=1/10;
t=-1:Ts:1;
y=sin(2*pi*t);
subplot(3,2,5);
stem(t,y);

%discrete exponential function
Ts=1/10;
t=-1:Ts:1;
y=exp(2*t);
subplot(3,2,6);
stem(t,y);





