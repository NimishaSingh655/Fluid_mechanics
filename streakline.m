clear all;
clc;
x0 = 1;
y0 = 1;
t0 = 0:0.1:5;
x = linspace(0, 5, 50);
y = linspace(0, 2, 50);
[X,Y] = meshgrid(x,y);
%mesh(X,Y,Y.*X - 1,[0 0]);
graphics_toolkit("gnuplot");
part = 2;
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
  for i = 1:part
  plot(x0 * exp(t - t0(i)), y0*exp(-1/2 * (t^2-t0(i)^2)),'ok','markerfacecolor','k');
  contour(X,Y,log((Y/y0).^2) - log(X/x0).^2 + 2*t*log(X/x0),[0 0]);
  end
  part = part +1;
  
  
  hold off;
  xlim([0,5]);
  ylim([0,2]);
  #drawnow;
  pause(0.2);
end
