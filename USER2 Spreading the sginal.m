%CDMA signal spreading
%----------------------------- USER#2 ----------------------------------
'--------------------- USER#2 ---------------------'
D2=[1 0];  %<---DATE  2Bits to send 
C2=[0 0 1 1];  %<---Spreading CODE (Used code) Diffrent code

d21=D2(1);
dd21=[d21 d21 d21 d21];
d22=D2(2);
dd22=[d22 d22 d22 d22];
Code2=[C2];
Data21=[dd21];
Data22=[dd22];
XOR21 =xor(Code2,Data21)   %<---xor1 
XOR22 =xor(Code2,Data22)   %<---xor2 

U2SM=[XOR21 XOR22]    %<---User#2 spread message 8Chips
subplot(2,2,2)
stairs(U2SM,'LineWidth',2);
title('User2')
xlabel('Code')
ylabel('Data')
