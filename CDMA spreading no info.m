clear all; close all; clc;
%CDMA signal spreading in matlab

D1=[0 0];  
C1=[0 1 0 1]; 
d11=D1(1);                      
dd11=[d11 d11 d11 d11]                   
d12=D1(2);                             
dd12=[d12 d12 d12 d12];                  
Code1=[C1]                              
Data1=[dd11];                            
Data12=[dd12];

XOR11 =xor(Code1,Data1)  
XOR12 =xor(Code1,Data12); 
                                 
U1SM=[XOR11 XOR12]    
subplot(2,2,1)
stairs(U1SM,'LineWidth',2);
title('User1')
xlabel('Code')
ylabel('Data')

D2=[1 0];   
C2=[0 0 1 1];  
d21=D2(1);
dd21=[d21 d21 d21 d21];
d22=D2(2);
dd22=[d22 d22 d22 d22];
Code2=[C2];
Data21=[dd21];
Data22=[dd22];
XOR21 =xor(Code2,Data21)   
XOR22 =xor(Code2,Data22)   

U2SM=[XOR21 XOR22]   
subplot(2,2,2)
stairs(U2SM,'LineWidth',2);
title('User2')
xlabel('Code')
ylabel('Data')

D3=[1 1];   
C3=[0 0 0 0];  
d31=D3(1);
dd31=[d31 d31 d31 d31];
d32=D3(2);
dd32=[d32 d32 d32 d32];
Code3=[C3];
Data31=[dd31];
Data32=[dd32];
XOR31 =xor(Code3,Data31)   
XOR32 =xor(Code3,Data32)   

U3SM=[XOR31 XOR32]   
subplot(2,2,3)
stairs(U3SM,'LineWidth',2);
ylim([0 1])
title('User3')
xlabel('Code')
ylabel('Data')

cas=[(U1SM*-2+1)+(U2SM*-2+1)+(U3SM*-2+1)]      
subplot(2,2,4)
stairs(cas,'LineWidth',2);
ylim([-3 3])
title('combing all 3 signal')
xlabel('Code')
ylabel('Data')

C1R=[C1 C1];       
RU1D=[cas.*(C1R*-2+1)];  
TOD1=[sum(RU1D([1:4]))/4,sum(RU1D([5:8]))/4]   
FOD1=(TOD1-1)/-2         

C2R=[C2 C2];       
RU2D=[cas.*(C2R*-2+1)];   
TOD2=[sum(RU2D([1:4]))/4,sum(RU2D([5:8]))/4]   
FOD2=(TOD2-1)/-2       

C3R=[C3 C3];       
RU3D=[cas.*(C3R*-2+1)];   
TOD3=[sum(RU3D([1:4]))/4,sum(RU3D([5:8]))/4]   
FOD3=(TOD3-1)/-2         

