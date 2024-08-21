%CDMA signal spreading in matlab
%----------------------------- USER#1 ----------------------------------
'--------------------- USER#1 ---------------------'
D1=[0 0];  %<---DATE  2Bits to send 
C1=[0 1 0 1];  %<---Spreading CODE (Used code)

d11=D1(1);                       %<----------\
dd11=[d11 d11 d11 d11]                      %|
d12=D1(2);                                  %|
dd12=[d12 d12 d12 d12];                     %|
Code1=[C1]                                  %  Spreading 
Data1=[dd11];                               %  the sginal
Data12=[dd12];                              %|
XOR11 =xor(Code1,Data1)   %<---xor1          |
XOR12 =xor(Code1,Data12);  %<---xor2         |
                                 %<----------/
U1SM=[XOR11 XOR12]    %<---User#1 spread message 8Chips
subplot(2,2,1)
stairs(U1SM,'LineWidth',2);
title('User1')
xlabel('Code')
ylabel('Data')
