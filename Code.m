% Project 2
% by: Tan Kar Jun Gary

% a
r = 100;
h = [0:10:500];

area = h*2.*r + 0.5*pi*r.^2;


figure(1);
plot(h,area,'-r');
title('The Enclosed Land Area against h for r = 100m');
ylabel('The Enclosed Land Area, m^2');
xlabel('h, m');
grid;


% b
r = [0:10:300];
h = [100 200 300 400];

area1 = fencearea(r,h(1));
area2 = fencearea(r,h(2));
area3 = fencearea(r,h(3));
area4 = fencearea(r,h(4));

figure(2);
plot(r,area1,'-r',r,area2,'-g',r,area3,'-c',r,area4,'-k');
title('The Enclosed Land Area against r with Different h');
ylabel('The Enclosed Land Area, m^2');
xlabel('r, m');
legend('h = 100m', 'h = 200m', 'h = 300m', 'h = 400m');
grid;


% c
r = [0:10:300];
h = [0:10:500];

[rr,hh] = meshgrid(r,h);
area = fencearea(rr,hh);

figure(3);
surf(rr,hh,area);
title('The Enclosed Land Area against r and h');
xlabel('r,m');
ylabel('h,m');
zlabel('The Enclosed Land Area, m^2');
grid on;

figure(4);
contour(rr,hh,area);
title('Series of Lines of Constant Land Area');
xlabel('r,m');
ylabel('h,m');
zlabel('The Enclosed Land Area, m^2');
grid;


% d
L = 1000;
hmin = 0;
rmax = (L - 2*hmin)/(0.5*2*pi);

r = [0:0.1:rmax];
h = (L - 0.5*2*pi*r)/2;

area = fencearea(r,h);

r1 = [0:0.0001:rmax];
h1 = (L - 0.5*2*pi*r1)/2;

area1 = fencearea(r1,h1);

[maxarea, amax] = max(area1);

figure(5);
plot(r,area,'-c');
title('The Enclosed Land Area against r for Length of Fence=1000m');
xlabel('r,m');
ylabel('The Enclosed Land Area, m^2');
grid;

disp('The dimension h corresponding to the maximum enclosed land area is:');
disp(h1(amax));

disp('The dimension r corresponding to the maximum enclosed land area is:');
disp(r1(amax));

Lmax = 2000;
h2min = 0;
r2max = (Lmax - 2*h2min)/(0.5*2*pi);

r2 = [0:0.1:r2max];
z = length(r2);
L = linspace(0,2000,z);
h2 = (L - 0.5*2*pi.*r2)/2;

area2 = fencearea(r2,h2);

figure(6);
plot(L,area2);
title('The Maximum Enclosed Land Area against Length of Fence');
xlabel('Length of fence, m');
ylabel('The Enclosed Land Area, m^2');
grid;



