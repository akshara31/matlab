clc
clear all
syms x y z t
f=input('Enter the components of 3D vector function [u,v,w] ');
r=input('Enter x,y,z in parametric form');
I=input('Enter the limits of integration for t in the form [a,b]');
a=I(1);b=I(2);
dr=diff(r,t);
F=subs(f,{x,y,z},r);
Fdr=sum(F.*dr);
I=int(Fdr,t,a,b)
P(x,y,z)=f(1);Q(x,y,z)=f(2); R(x,y,z)=f(3);
x1=linspace(0,1,10); y1=x1; z1=x1;
[X,Y,Z] = meshgrid(x1,y1,z1);
U=P(X,Y,Z); V=Q(X,Y,Z); W=R(X,Y,Z);
quiver3(X,Y,Z,U,V,W,1.5)
hold on
t1=linspace(0,1,10);
x=subs(r(1),t1);y=subs(r(2),t1);z=subs(r(3),t1);
plot3(x,y,z,'r')



