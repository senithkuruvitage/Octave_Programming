pkg load io;
filename= 'data.xlsx';
num=xlsread(filename,'A2:B24'); %Read the data from A2:B24 cells in the Excel file.
x=num(:,1) %puts all the data in the first column of the ‘num’ into x.
y=num(:,2) %puts all the data in the second column of the ‘num’ into y.

ax=mean(x); %average of x alues.
ax=mean(y); %average of y alues.
x_ax=x-ax;
y_ay=y-ay;
covarxy=sum(x_ax.*y_ay) % Covariance of x and y.
varx=sum(x_ax.^2) % Variance of x.

m = covarxy / varx
c = ay - m * ax

y_fit=m*x + c

plot(x,y,'.r',x,y_fit,'-b') % plot
xlim([1 25]); ylim([80 400]);
xlabel('Year'); ylabel('Cost(USD)')
text(15,200,["Regression equation:"])
text(15,180,["y=" num2str(m) "x " num2str(c)])
grid('on'); legend('Data','Fitted')

matrix=zeros(length(x),3); % creates a length(x)×3 matrix with zero values.
headers = {'x-ax', 'y-ay', '(x-ax)^2'}; % header names of three columns.
matrix(:,1)=x_ax; %assign values to the first column of the matrix.
matrix(:,2)=y_ay; %assign values to the second column of the matrix.
matrix(:,3)=x_ax.^2; %assign values to the third column of the matrix.
data_as_cell = num2cell(matrix);
info_to_write = [headers; data_as_cell];
xlswrite(filename,info_to_write,'C1:E25');


