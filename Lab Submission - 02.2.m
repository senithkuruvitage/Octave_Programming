clear;       % Close all the open graphs
close all;   % Clear all the variables
clc;         % Clear the command windows

a = 2 + 2i;
b = 2 - 3i;

m = a+b;
n = a-b;
o = a*b;
p = a/b;

%Modulus and argument of each value
abs_a = abs(a); arg_a = arg(a);
abs_b = abs(b); arg_b = arg(b);
abs_m = abs(m); arg_m = arg(m);
abs_n = abs(n); arg_n = arg(n);
abs_o = abs(o); arg_o = arg(o);
abs_p = abs(p); arg_p = arg(p);

printf('m = %.0f%+.0fi\n', real(m), imag(m));
printf('n = %.0f%+.0fi\n', real(n), imag(n));
printf('o = %.0f%+.0fi\n', real(o), imag(o));
printf('p = %.4f%+.4fi\n', real(p), imag(p));

printf('a_mod : %.3f a_angle : %.3f\n', abs(a), arg(a));
printf('b_mod : %.3f b_angle : %.3f\n', abs(b), arg(b));
printf('m_mod : %.3f m_angle : %.3f\n', abs(m), arg(m));
printf('n_mod : %.3f n_angle : %.3f\n', abs(n), arg(n));
printf('o_mod : %.3f o_angle : %.3f\n', abs(o), arg(o));
printf('p_mod : %.3f p_angle : %.3f\n', abs(p), arg(p));

z = [a, b, m, n, o, p];
colors = ['b', 'r', 'g', 'c', 'm', 'k'];
%Blue, Red, Green, Cyan, Magenta, Black

figure;
hold on;     %keep all 6 lines on the same axes
axis equal;  %show gridlines for easier reading
grid on;     %equal scaling on both axes so angles look correct

for k = 1:length(z)
  x = real(z(k));    %horizontal component (real part)
  y = imag(z(k));    %vertical component (imaginary part)
  plot([0 x], [0 y], colors(k)); %draw a line from the origigin (0,0) to the point (x,y)
% label the tip of the vector with its modulus and angle (in radians)
  text(x, y, ["(" num2str(abs(z(k))) "," num2str(arg(z(k))) ")"]);
end
title('Polar Plot of Complex Numbers');
xlabel('Real Axis');
ylabel('Imaginary Axis');
legend(
         ['z1 = ' num2str(a)],
         ['z2 = ' num2str(b)],
         ['z3 = ' num2str(m)],
         ['z4 = ' num2str(n)],
         ['z5 = ' num2str(o)],
         ['z6 = ' num2str(p)]
      );
hold off;


