clc
close all

g = 9.81;
e = 2.718;
y1max = 0;
y2max = 0;
y3max = 0;
y4max = 0;
y5max = 0;
y6max = 0;
y1 = 0;
y2 = 0;
y3 = 0;
y4 = 0;
y5 = 0;
y6 = 0;

H = input('Altura inicial: ');

disp('First Projectile');
Vo = input('Velocidad inicial: ');
a = input('Angulo: ');
f = input('Drag: ');

disp('Second Projectile');
Vo1 = input('Velocidad inicial: ');
a1 = input('Angulo: ');
f1 = input('Drag: ');

disp('Third Projectile');
Vo2 = input('Velocidad inicial: ');
a2 = input('Angulo: ');
f2 = input('Drag: ');

a = deg2rad(a);
a1 = deg2rad(a1);
a2 = deg2rad(a2);
%a = a*3.1416/180;
%a1 = a1*3.1416/180;
%a2 = a2*3.1416/180;

t = 0;

parabola1 = animatedline('Color','#ED5565','LineStyle','--','LineWidth',2);
parabola2 = animatedline('Color','#DA4453','LineWidth',2);
parabola3 = animatedline('Color','#A0D468','LineStyle','--','LineWidth',2);
parabola4 = animatedline('Color','#8CC152','LineWidth',2);
parabola5 = animatedline('Color','#A020F0','LineStyle','--','LineWidth',2);
parabola6 = animatedline('Color','#A020F0','LineWidth',2);
piso = animatedline('Color','#964B00','LineWidth',50);
pasto = animatedline('Color','#00FF00','LineWidth',10);
cielo = animatedline('Color','#f0f8ff','LineWidth',10000000);
xlim([0 350])
ylim([-10 150])
set(gca,'color','#7D92DE')
grid on

tic
while true
    addpoints(piso,t*10000,-10);
    addpoints(pasto,t*10000,0)
    if y1>=0

        x1 = Vo*cos(a)*t;
        y1 = H + (tan(a)*x1)-(0.5*g/(Vo*cos(a))^2)*(x1^2);
        addpoints(parabola1, x1,y1);
        vx1 = Vo*cos(a);
        vy1 = Vo*sin(a)+g*t;

        if y1 > y1max
            y1max = y1;
        end

        s1x = string(round(x1));
        s1y = string(round(y1));
        s1ymax = string(round(y1max));
        s1vy = string(round(vy1));
        s1vx = string(round(vx1));

        strf1 = strcat('x=',s1x,{' '},'y=',s1y,{' '},'ymax=',s1ymax,{' '},'vx=',s1vx,{' '},'vy=',s1vy);
    end

    if y2>=0

        x2 = (Vo*cos(a)/f)*(1-e^(-f*t));
        y2 = H + ((f*Vo*sin(a)+g)/(f^2))*(1-e.^(-f*t))-(g*t/f);
        addpoints(parabola2, x2,y2);
        vx2 = Vo*cos(a)*e^(-f*t);
        vy2 = (g/f+Vo*sin(a))*e^(-f*t)-g/t;

        if y2 > y2max
            y2max = y2;
        end

        s2x = string(round(x2));
        s2y = string(round(y2));
        s2ymax = string(round(y2max));
        s2vy = string(round(vy2));
        s2vx = string(round(vx2));

        strf2 = strcat('x=',s2x,{' '},'y=',s2y,{' '},'ymax=',s2ymax,{' '},'vx=',s2vx,{' '},'vy=',s2vy);
    end

    if y3>=0
        x3 = Vo1*cos(a1)*t;
        y3 = H + (tan(a1)*x3)-(0.5*g/(Vo1*cos(a1))^2)*(x3^2);
        addpoints(parabola3, x3,y3);
        vx3 = Vo1*cos(a1);
        vy3 = Vo1*sin(a1)+g*t;

        if y3 > y3max
            y3max = y3;
        end

        s3x = string(round(x3));
        s3y = string(round(y3));
        s3ymax = string(round(y3max));
        s3vy = string(round(vy3));
        s3vx = string(round(vx3));

        strf3 = strcat('x=',s3x,{' '},'y=',s3y,{' '},'ymax=',s3ymax,{' '},'vx=',s3vx,{' '},'vy=',s3vy);
    end

    if y4>=0

        x4 = (Vo1*cos(a1)/f1)*(1-e^(-f1*t));
        y4 = H + ((f1*Vo1*sin(a1)+g)/(f1^2))*(1-e.^(-f1*t))-(g*t/f1);
        addpoints(parabola4, x4,y4);
        vx4 = Vo1*cos(a1)*e^(-f1*t);
        vy4 = (g/f1+Vo1*sin(a1))*e^(-f1*t)-g/t;

        if y4 > y4max
            y4max = y4;
        end

        s4x = string(round(x4));
        s4y = string(round(y4));
        s4ymax = string(round(y4max));
        s4vy = string(round(vy4));
        s4vx = string(round(vx4));

        strf4 = strcat('x =',s4x,{' '},'y=',s4y,{' '},'ymax=',s4ymax,{' '},'vx=',s4vx,{' '},'vy=',s4vy);
    end
    
    if y5>=0

        x5 = Vo2*cos(a2)*t;
        y5 = H + (tan(a2)*x5)-(0.5*g/(Vo2*cos(a2))^2)*(x5^2);
        addpoints(parabola5, x5,y5);
        vx5 = Vo2*cos(a2);
        vy5 = Vo2*sin(a2)+g*t;

        if y5 > y5max
            y5max = y5;
        end

        s5x = string(round(x5));
        s5y = string(round(y5));
        s5ymax = string(round(y5max));
        s5vy = string(round(vy5));
        s5vx = string(round(vx5));

        strf5 = strcat('x=',s5x,{' '},'y=',s5y,{' '},'ymax=',s5ymax,{' '},'vx=',s5vx,{' '},'vy=',s5vy);
    end

    if y6>=0

        x6 = (Vo2*cos(a2)/f2)*(1-e^(-f2*t));
        y6 = H + ((f2*Vo2*sin(a2)+g)/(f2^2))*(1-e.^(-f2*t))-(g*t/f2);
        addpoints(parabola6, x6,y6);
        vx6 = Vo2*cos(a2)*e^(-f2*t);
        vy6 = (g/f2+Vo2*sin(a2))*e^(-f2*t)-g/t;

        if y6 > y6max
            y6max = y6;
        end

        s6x = string(round(x6));
        s6y = string(round(y6));
        s6ymax = string(round(y6max));
        s6vy = string(round(vy6));
        s6vx = string(round(vx6));

        strf6 = strcat('x = ',s6x,{' '},'y = ',s6y,{' '},'ymax = ',s6ymax,{' '},'vx=',s6vx,{' '},'vy=',s6vy);
    end

    drawnow limitrate

    t=t+.01;

    legend(strf1,strf2,strf3,strf4,strf5,strf6,'FontSize',10)

    if y1<0 && y2<0 && y3<0 && y4<0 && y5<0 && y6<0
        break
    end
    
end
toc