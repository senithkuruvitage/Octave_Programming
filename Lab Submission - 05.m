theta=[0.523599,0.785398,1.047198,1.396263,1.745329];
torque=[0.320145,0.290267,0.265183,0.225098,0.180056];
atheta=mean(theta);
atorque=mean(torque);
theta_n=theta-atheta;
torque_n=torque-atorque;
covariance_thetatorque=sum(theta_n.*torque_n);
variance_theta=sum(theta_n.^2);
m=covariance_thetatorque/variance_theta;
c=atorque-m*atheta;
y_fit=m*theta + c;

figure

plot(theta,torque,'.r',theta,y_fit,'-b') % Calling the plot function.
set(gca,"fontsize",15)
xlim([0.4 1.8]); ylim([0.15 0.35]); %setting x and y axes limits.
xlabel('Angle (radians)'); ylabel('Torque (N.m)') % name the axes.
text(1,0.303,["Torque = -0.113 (Theta) + 0.38085"],"fontsize",12)
title("Torque","fontsize",14) % set the title of the graph.
text(15,180,["y=" num2str(m) "x " num2str(c)])
grid('on'); legend('Data','Fitted') % turn on the grid lin


