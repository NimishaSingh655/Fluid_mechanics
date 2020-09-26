clear all;
clc;
x = linspace(1, 10, 50);
y = linspace(1, 10, 50);
[X,Y] = meshgrid(x,y);
%mesh(X,Y,Y.*X - 1,[0 0]);
graphics_toolkit("gnuplot");
for t = 0:0.1:5
  U = X;
  V = -Y*t;
  figure(1);
  quiver(X,Y,U,V);
  set(gca, 'fontsize',16 );
  xlabel('x','fontsize',16 );
  ylabel('y','fontsize',16 );
  title('Quiver plot');
  hold on;
  for c = [7,8,9,10]
    contour(X,Y,Y.*(X.^t) - c,[0 0]);
    drawnow;
    
  end
hold off;
pause(0.2);
end

