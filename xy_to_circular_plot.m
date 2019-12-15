clear all;
% define your data points as arrays
x=[1,3,5,7,8];
y=[0.8,0.98,1.02,0.88,0.96];
% define the maximum and minimum value
max=1.1;
min=0.95;

% append the first value to the last index of the array to foem a closed
% array
x=[x x(1)];
y=[y y(1)];
% normalise X and Y(if necessary)
x1=x/sum(x);
y1=y/sum(y);
yrs=[];
yrc=[];

% define the maximum and minimum circle limits
t=1:0.01:100;
maxs = max*sin(2*pi*t);
maxc =max*cos(2*pi*t);
mins = min*sin(2*pi*t);
minc =min*cos(2*pi*t);

% assign labels for plotting
labels= string(y);
ind=1:length(x);
% conversion from x-y to circular coordinates
for i=1:length(x1)
yrs(i)=y(i)*sin(2*pi*x1(i));
yrc(i)=y(i)*cos(2*pi*x1(i));
end

% plot the data
plot(yrc,yrs);
text(yrc(ind),yrs(ind),labels(ind));
hold on 

% plot the maxima and minima
plot(maxc,maxs,minc,mins);
legend('data','max ='+string(max),'min ='+string(min));