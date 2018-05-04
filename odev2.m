% 16253037
% SEREN KADIKOYLU
% BILGISAYAR MUHENDISLIGI

kazandi=0;
i=0;
while(i<1000)
odul=randi([1,3],1);
secim=randi([1,3],1);
if(secim==odul)
kazandi=kazandi+1;
end
i=i+1;
end
degistirmezseOlasilik=kazandi/i;

kazandi=0;
i=0;
while(i<1000)
  odul=randi([1,3],1);
  secim(1)=randi([1,3],1); %ilk secimi
  secim(2)=secim(1);
  while((secim(1)!=odul || secim(2)!=odul) && (secim(1)==secim(2)))
    secim(2)=randi([1,3],1); %degistirebilecegi
  end
  if(secim(2)==odul) %degistirirse
      kazandi=kazandi+1;
  end
  i=i+1;
end
degistirirseOlasilik=kazandi/i;

disp([''])
disp(['Yarismaci secimini;'])
disp([''])
disp(['-->Degistirmezse Kazanma Olasiligi'])
disp(['a) Gercek Deger : ' num2str(1/3) '   b) Hesaplanan : ' num2str(degistirmezseOlasilik)])
disp([''])
disp(['-->Degistirirse Kazanma Olasiligi'])
disp(['a) Gercek Deger : ' num2str(2/3) '   b) Hesaplanan : ' num2str(degistirirseOlasilik)])
disp([''])
