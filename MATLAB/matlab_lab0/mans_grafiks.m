function createfigure(X1, ymatrix1)
%CREATEFIGURE(X1, YMATRIX1)
%  X1:  stairs x
%  YMATRIX1:  stairs matrix data

%  Auto-generated by MATLAB on 12-Feb-2018 09:30:27

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create multiple lines using matrix input to stairs
stairs1 = stairs(X1,ymatrix1);
set(stairs1(1),'DisplayName','sinusoīda');
set(stairs1(2),'DisplayName','kosinusoīda','Color',[0 1 1]);

% Create text
text('Parent',axes1,'VerticalAlignment','baseline','String','x_m',...
    'Position',[0.323732718894009 -0.501457725947522 0]);

% Create text
text('Parent',axes1,'VerticalAlignment','baseline','String','x^2',...
    'Position',[0.298387096774194 -0.868804664723032 0]);

% Create text
text('Parent',axes1,'VerticalAlignment','baseline','String','x_{min}',...
    'Position',[0.639400921658986 -0.676384839650146 0]);

% Create xlabel
xlabel('\Omega');

% Create title
title('Mans grafiks');

% Create ylabel
ylabel('u,V');

box(axes1,'on');
% Create legend
legend(axes1,'show');

