%----------------------------- USER#3 ----------------------------------
'--------------------- USER#3 ---------------------'
D3=[1 1];  %<---DATE  2Bits to send 
C3=[0 0 0 0];  %<---Spreading CODE (Used code) Diffrent code

d31=D3(1);
dd31=[d31 d31 d31 d31];
d32=D3(2);
dd32=[d32 d32 d32 d32];
Code3=[C3];
Data31=[dd31];
Data32=[dd32];
XOR31 =xor(Code3,Data31)   %<---xor1 
XOR32 =xor(Code3,Data32)   %<---xor2 

U3SM=[XOR31 XOR32]    %<---User#3 spread message 8Chips
subplot(2,2,3)
stairs(U3SM,'LineWidth',2);
ylim([0 1])
title('User3')
xlabel('Code')
ylabel('Data')
