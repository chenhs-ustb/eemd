throught = load('con_nor.txt');
t = throught(:,1);
th = throught(:,2);

%throught2 = load('con_rreqrc.txt');
throught2 = load('con_rreq2');
t2 = throught2(:,1);
th2 = throught2(:,2);

subplot(6,2,1)
plot(t,th);
title('normal routing message number');

subplot(6,2,2)
plot(t2,th2);
title('attack routing message number');


rslt_n = eemd(th,0,1);
rslt_a = eemd(th2,0,1);


m1_a=ifndq(rslt_a(:,2),1);%IMF1对应(:,2)
m1_n=ifndq(rslt_n(:,2),1);%IMF1对应(:,2)

subplot(6,2,3)
plot(t,rslt_n(:,2));%IMF1对应(:,2)
title('normal IMF1');

subplot(6,2,5)
plot(t2,rslt_a(:,2));%IMF1对应(:,2)
title('attack IMF1');

subplot(6,2,4)
plot(t,m1_n/2/pi);
title('normal instantaneous frequency in IMF1');

subplot(6,2,6)
plot(t2,m1_a/2/pi);
title('attack instantaneous frequency in IMF1');


figure(2);
m1_a=ifndq(rslt_a(:,3),1);%IMF2对应(:,3)
m1_n=ifndq(rslt_n(:,3),1);%IMF2对应(:,3)

subplot(6,2,3)
plot(t,rslt_n(:,3));%IMF2对应(:,3)
title('normal IMF2');

subplot(6,2,5)
plot(t2,rslt_a(:,3));%IMF2对应(:,3)
title('attack IMF2');

subplot(6,2,4)
plot(t,m1_n/2/pi);
title('normal instantaneous frequency in IMF2');

subplot(6,2,6)
plot(t2,m1_a/2/pi);
title('attack instantaneous frequency in IMF2');



figure(3);

m1_a=ifndq(rslt_a(:,4),1);%IMF3对应(:,4)
m1_n=ifndq(rslt_n(:,4),1);%IMF3对应(:,4)

subplot(6,2,3)
plot(t,rslt_n(:,4));%IMF3对应(:,4)
title('normal IMF3');

subplot(6,2,5)
plot(t2,rslt_a(:,4));%IMF3对应(:,4)
title('attack IMF3');

subplot(6,2,4)
plot(t,m1_n/2/pi);
title('normal instantaneous frequency in IMF3');

subplot(6,2,6)
plot(t2,m1_a/2/pi);
title('attack instantaneous frequency in IMF3');