clear
clc
syms x
f(x)=2*x^3-3*x^2-12*x; % Upper curve
g(x)=x; % Lower curve
I=[-1,2]; % Interval of Integration
a=I(1); b=I(2);
A=int(f(x)-g(x),a,b); % Finding the area by integration
disp('Area bounded by the curves f(x) and g(x) is:' );
disp(A);
fplot(f(x),[a,b]);grid on;hold on; %Plotting the upper curve
fplot(g(x),[a,b]);hold off %Plotting the lower curve
xlabel('x-axis');ylabel('y-axis');
legend('y=f(x)','y=g(x)'); 


