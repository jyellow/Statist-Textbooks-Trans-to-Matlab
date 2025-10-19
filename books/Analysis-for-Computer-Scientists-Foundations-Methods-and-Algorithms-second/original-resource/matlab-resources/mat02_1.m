% M-file for Experiment 2.8 und Figure 2.6

clear; clc; 

x = 0:0.01:1.1;
y = x.^2;

figure                                 % produces a figure window

plot(x, y, 'k', 'linewidth',1.5)       % plot of the graph of y = x^2
hold on                                % used for plotting further graphs in the same window
plot(y, x, 'k', 'linewidth',1.5)       % plot of the graph of the inverse function

% plot of diagonal, dashed line style
plot(x,x,'k--')

% annotations with font size and position
text(1.35,0,'x','fontsize',14,'Verticalalignment','middle','Horizontalalignment','center')
text(0,1.3,'y','fontsize',14,'Verticalalignment','middle','Horizontalalignment','center')
text(0.65, 0.25,'y = f(x)','fontsize',14,'Verticalalignment','middle','Horizontalalignment','left')
text(0.35, 0.85,'y = f^{ -1}(x)','fontsize',14,'Verticalalignment','middle','Horizontalalignment','center')

% axes
plot([-0.2 1.25],[0,0],'k')
plot([0 0],[-0.2 1.2],'k')

% arrows
plot(1.25,0,'k>')
plot(0,1.2,'k^')

% scaling of visible axis window
axis([-0.3,1.5,-0.3,1.5])

hold off                               % The command "hold" should be terminated for safety.