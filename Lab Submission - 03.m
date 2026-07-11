clc;
clear;
close;

c = -8i;
p0 = abs(c);
ang0 = arg(c);

p1 = p0^(1/3);
p2 = p1;
p3 = p1;

ang1 = (ang0/3);
ang2 = ang1+(2*pi/3);
ang3 = ang1+2*(2*pi/3);

x1 = p1*cos(ang1);
y1 = p1*sin(ang1);

x2 = p2*cos(ang2);
y2 = p2*sin(ang2);

x3 = p3*cos(ang3);
y3 = p3*sin(ang3);

figure
plot([0, x1], [0,y1], [0, x2], [0,y2], [0, x3], [0,y3]);
xlabel("Real");
ylabel("Imaginary");
title("Roots of Complex Number 0-8i");
grid on;
axis([-3, 3, -2.5, 2.5]);

text(x1,y1,["(" num2str(p1) "," num2str(ang1) ")"], "fontsize",15);
text(x2,y2,["(" num2str(p2) "," num2str(ang2) ")"], "fontsize",15);
text(x3,y3,["(" num2str(p3) "," num2str(ang3) ")"], "fontsize",15);

xx = linspace(-p1, p1, 50);
yy1 = sqrt(p1^2 -xx.^2);
yy2 = -1*sqrt(p1^2 -xx.^2);
hold on;
plot(xx,yy1,"linestyle",'--','c',xx,yy2,"linestyle",'--','c');

k1 = p1*exp(i*ang1);
k2 = p2*exp(i*ang2);
k3 = p3*exp(i*ang3);


