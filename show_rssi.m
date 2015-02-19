p=dlmread("rssi.log.tmp");
t=1:length(p);

t0=[t',p];
t0(find(t0(:,2)!=0),:) = [];

t1=[t',p];
t1(find(t1(:,2)!=1),:) = [];

t2=[t',p];
t2(find(t2(:,2)!=2),:) = [];

t3=[t',p];
t3(find(t3(:,2)!=3),:) = [];

plot(t0(:,1),t0(:,3),'.r');
hold on
plot(t1(:,1),t1(:,3),'.g');

plot(t2(:,1),t2(:,3),'.b');

plot(t3(:,1),t3(:,3),'.m');

