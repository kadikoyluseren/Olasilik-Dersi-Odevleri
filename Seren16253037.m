%SEREN KADIKÖYLÜ
%16253037
%BÝLGÝSAYAR MÜHENDÝSLÝÐÝ
%-----------------------------

% YAPILAN TUM ATISLARIN GOSTERIMI
atisSayisi= 1000; %yapilacak atis sayisi
R = 30; %buyuk cemberin yaricapi
xMerkez = 30; %cemberlerin merkezinin x koordinati
yMerkez = 30; %cemberlerin merkezinin y koordinati
t = 2*pi*rand(atisSayisi,1);
r = R*sqrt(rand(atisSayisi,1));
x = xMerkez + r.*cos(t); %vurulan noktalarin x koordinatlari
y = yMerkez + r.*sin(t); %vurulan noktalarin y koordinatlari
subplot(1,2,1),plot(x,y,'.', 'MarkerSize', 10) %atislari cizdirme
title('ATIS TAHTASI');
%xlabel('x-ekseni');
%ylabel('y-ekseni');
%axis square;
hold on;

th=0:pi/100:2*pi;

% BUYUK CEMBER CIZIMI
a=R*cos(th)+xMerkez;
b=R*sin(th)+yMerkez;
subplot(1,2,1),plot(a,b,'LineWidth',3);
hold on;

% KUCUK CEMBER CIZIMI
rr=10; %kucuk cemberin yaricapi
s=rr*cos(th)+xMerkez;
k=rr*sin(th)+yMerkez;
subplot(1,2,1),plot(s,k,'LineWidth',3);
grid on;
axis square off;

vurdu=0;
atis=1:atisSayisi;
for i=1:atisSayisi
if (sqrt((x(i)-30)^2+(y(i)-30)^2)<=10)
%atis ve merkez koordinatlari ile noktanin merkeze uzakligi hesaplama
vurdu=vurdu+1;
end
olasilik(i)=vurdu/i;
end

% OLASILIK-ATIS SAYISI TABLOSU
subplot(1,2,2),plot(atis,olasilik); 
title(['1/9 = ' num2str(1/9) '   |   ' 'Olasilik = ' num2str(olasilik(atisSayisi))]);
xlabel('ATIS SAYISI');
ylabel('OLASILIK');
grid on;
axis square;
