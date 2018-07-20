clc
t = 0:0.01:4*pi
y1= sin(t.*1)
y2=sin(t.*2)
y3=exp(t.*(-0.25));
plot(t,y1);hold on;
plot(t,y2,'r');hold on;
plot(t,y3.*y2,'g');
