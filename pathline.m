clear all;
clc;
x0 = 3;
y0 = 3;
t0 = 0;
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
  plot(x0 * exp(t - t0), y0*exp(-1/2 * (t^2-t0^2)),'ok','markerfacecolor','k');
  contour(X,Y,log(Y/y0) + (1/2)*log(X/x0).^2,[0 0]);
  hold off;
  xlim([1,10]);
  ylim([1,10]);
  drawnow;
  pause(0.2);
end
