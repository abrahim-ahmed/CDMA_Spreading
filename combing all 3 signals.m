'-------------- combing all 3 signals --------------'

cas=[(U1SM*-2+1)+(U2SM*-2+1)+(U3SM*-2+1)]      %<---combing all 3 signal called Compisitns wareforms
subplot(2,2,4)
stairs(cas,'LineWidth',2);
ylim([-3 3])
title('combing all 3 signal')
xlabel('Code')
ylabel('Data')
