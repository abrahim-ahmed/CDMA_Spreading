'-------------- Compisitns wareforms --------------'

'--------------------- USER#1 ---------------------'
C1R=[C1 C1];        %<---Code1 repeated twice
RU1D=[cas.*(C1R*-2+1)];   %<---Retrieval the original User#1 data
TOD1=[sum(RU1D([1:4]))/4,sum(RU1D([5:8]))/4]   %<---the original data1
FOD1=(TOD1-1)/-2         %<---Final original data1

'--------------------- USER#2 ---------------------'
C2R=[C2 C2];        %<---Code2 repeated twice
RU2D=[cas.*(C2R*-2+1)];   %<---Retrieval the original User#2 data
TOD2=[sum(RU2D([1:4]))/4,sum(RU2D([5:8]))/4]   %<---the original data2
FOD2=(TOD2-1)/-2         %<---Final original data2

'--------------------- USER#3 ---------------------'
C3R=[C3 C3];        %<---Code3 repeated twice
RU3D=[cas.*(C3R*-2+1)];   %<---Retrieval the original User#3 data
TOD3=[sum(RU3D([1:4]))/4,sum(RU3D([5:8]))/4]   %<---the original data3
FOD3=(TOD3-1)/-2         %<---Final original data3
