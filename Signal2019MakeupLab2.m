%% Sawtooth Periodic Wave
fs=1000000;
t=0:1/fs:1.1;
f=20;
x1=square(2*pi*f*t);
plot(t,x1)
axis([0 0.2 -1.2 1.2])
xlabel('Time (sec)')
ylabel('amplitude')
title('sawtooth periodic wawe')
%% Square Periodic Wawe
fs=1000000;
t=0:1/fs:1.5;
x2=square(2*pi*20*t);
plot(t,x2)
axis([0 0.2 -1.2 1.2]);
xlabel('Time (sec)')
ylabel('Amplitude')
title('Sawtooth Periodic Wave')
%% CT unit sample/unit step/unit ramp/unit quad
t = (-5:0.01:5)';
impulse = t==0;
unitstep = t>=0;
ramp = t.*unitstep;
quad = t.^2.*unitstep;
subplot(2,2,1)
plot(t,impulse,'linewidth',2,'color', 'r')
subplot(2,2,2)
plot(t,unitstep,'linewidth',2,'color', 'g')
subplot(2,2,3)
plot(t,ramp,'linewidth',2,'color', 'b')
subplot(2,2,4)
plot(t,quad,'linewidth',2,'color', 'k')
grid on
%% %% Soru-2 DT unit ramp
clear all
close all
clc
N=10;
n=0:1:N;
a=1;
y=a*n;
stem(n,y,'filled','linewidth',2,'color','b');
ylabel('amplitude')
xlabel('number of samples--->');
title('discrete ramp signal');
display(y);
%% CT sin signal
clc
clear all
close all
fs=1000;
dt=1/fs;
StopTime=0.25;
t=(0:dt:StopTime-dt);
F=20;
data=sin(2*pi*F*t);
plot(t,data,'linewidth',2,'Color','b')
%% CT Cos Signal
clc
clear all
close all
fs=1000;
T_s=1/fs;
t=(0:T_s:1);
F=20;
data=cos(2*pi*F*t);
plot(t,data,'Linewidth',2,'Color','b')
grid on
xlabel('\itt','FontName','Times','Fontsize',24);
ylabel('x[{\itt}]','FontName','Times','Fontsize',24);
%% DT cos Signal
clc
clear all
close all
n=0:50
x=cos(2*pi*n/50)
p=stem(n,(x),'k','filled');
set(p,'LineWidth',2,'Markersize',4);
xlabel('\itt','FontName','Times','Fontsize',24);
ylabel('x[{\itt}]','FontName','Times','Fontsize',24);
%% DT Sin Signal
clc
clear all
close all
n=0:105
x=sin(2*pi*n/35)
p=stem(n,x,'k','filled');
set(p,'LineWidth',2,'Markersize',4);
xlabel('\itt','FontName','Times','Fontsize',24);
ylabel('x[{\itt}]','FontName','Times','Fontsize',24);
%% sampling ratio
clc
clear all
close all
f=1000;
T=1/f;
tmin=0;
tmax=5*T;
dt=T/100;
dt1=1/50000;
dt2=1/3000;
t=tmin:dt1:tmax;
t1=tmin:dt1:tmax;
t2=tmin:dt2:tmax;
x=sin(2*pi*f*t1);
x1=sin(2*pi*f*t1);
x2=sin(2*pi*f*t2);
subplot(211)
plot(t,x,'r');
hold on
stem(t1,x1)
subplot(212)
plot(t,x,'r')
hold on
stem(t2,x2);
%% sine and cosine hyperbolic function
N=50
x=linspace(-4*pi,4*pi,N)
f=(exp(x)-exp(-x))/2;
g=(exp(x)+exp(-x))/2;
plot(x,f,'--g*','LineWidth',2,'Color','b')
hold on
plot(x,g,'--bs','LineWidth',2,'Color','r')
xlabel('Time')
ylabel('sinh(x) and cosh(x) functions')
title('Hyperbolic trigonometric functions plotting')
legend('sinh(x)','cosh(x)')
%% atomic structure example
clear all
close all
clc
N=20;
n=0:1:N-1;
y=(3/5).^(n);
stem(n,y,'LineWidth',2,'Color','b');
ylabel('amplitude');
xlabel('number of samples--->');
xlim=[0 20]
ylim=[-1 3]
grid on
title('h[n] grafigi')
%%

ylim8
