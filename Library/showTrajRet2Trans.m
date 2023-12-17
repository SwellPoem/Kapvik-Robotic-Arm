function showTrajRet2Trans(tRet2Trans, qRet2Trans, qdRet2Trans, qddRet2Trans, omegaMax1, omegaMax2, omegaMax3, omegaMax4)

figure('name', 'Stowage to Navigation', 'WindowState', 'maximized')
subplot(3,4,1)
plot(tRet2Trans,rad2deg(qRet2Trans(1,:)),'r',lineWidth=1.5)
xlabel('$$t$$ [s]','Interpreter','latex')
ylabel('$$\theta_1(t)$$ $$[^\circ]$$','Interpreter','latex')
title('Joint angles 1','Interpreter','latex')
set(gca,'FontSize',15)
subplot(3,4,2)
plot(tRet2Trans,rad2deg(qRet2Trans(2,:)),'b',lineWidth=1.5)
xlabel('$$t$$ [s]','Interpreter','latex')
ylabel('$$\theta_2(t)$$ $$[^\circ]$$','Interpreter','latex')
title('Joint angles 2','Interpreter','latex')
set(gca,'FontSize',15)
subplot(3,4,3)
plot(tRet2Trans,rad2deg(qRet2Trans(3,:)),'g',lineWidth=1.5)
xlabel('$$t$$ [s]','Interpreter','latex')
ylabel('$$\theta_3(t)$$ $$[^\circ]$$','Interpreter','latex')
title('Joint angles 3','Interpreter','latex')
set(gca,'FontSize',15)
subplot(3,4,4)
plot(tRet2Trans,rad2deg(qRet2Trans(4,:)),'m',lineWidth=1.5)
xlabel('$$t$$ [s]','Interpreter','latex')
ylabel('$$\theta_4(t)$$ $$[^\circ]$$','Interpreter','latex')
title('Joint angles 4','Interpreter','latex')
set(gca,'FontSize',15)

subplot(3,4,5)
plot(tRet2Trans,rad2deg(qdRet2Trans(1,:)),'r',lineWidth=1.5)
hold on
plot(tRet2Trans,rad2deg(omegaMax1)*ones(1,length(tRet2Trans)),'k',lineWidth=1.5)
plot(tRet2Trans,-rad2deg(omegaMax1)*ones(1,length(tRet2Trans)),'k',lineWidth=1.5)
xlabel('$$t$$ [s]','Interpreter','latex')
ylabel('$$\dot\theta_1(t)$$ $$[^\circ/s]$$','Interpreter','latex')
title('Joint velocities 1','Interpreter','latex')
set(gca,'FontSize',15)
subplot(3,4,6)
plot(tRet2Trans,rad2deg(qdRet2Trans(2,:)),'b',lineWidth=1.5)
hold on
plot(tRet2Trans,rad2deg(omegaMax2)*ones(1,length(tRet2Trans)),'k',lineWidth=1.5)
plot(tRet2Trans,-rad2deg(omegaMax2)*ones(1,length(tRet2Trans)),'k',lineWidth=1.5)
xlabel('$$t$$ [s]','Interpreter','latex')
ylabel('$$\dot\theta_2(t)$$ $$[^\circ/s]$$','Interpreter','latex')
title('Joint velocities 2','Interpreter','latex')
set(gca,'FontSize',15)
subplot(3,4,7)
plot(tRet2Trans,rad2deg(qdRet2Trans(3,:)),'g',lineWidth=1.5)
hold on
plot(tRet2Trans,rad2deg(omegaMax3)*ones(1,length(tRet2Trans)),'k',lineWidth=1.5)
plot(tRet2Trans,-rad2deg(omegaMax3)*ones(1,length(tRet2Trans)),'k',lineWidth=1.5)
xlabel('$$t$$ [s]','Interpreter','latex')
ylabel('$$\dot\theta_3(t)$$ $$[^\circ/s]$$','Interpreter','latex')
title('Joint velocities 3','Interpreter','latex')
set(gca,'FontSize',15)
subplot(3,4,8)
plot(tRet2Trans,rad2deg(qdRet2Trans(4,:)),'m',lineWidth=1.5)
hold on
plot(tRet2Trans,rad2deg(omegaMax4)*ones(1,length(tRet2Trans)),'k',lineWidth=1.5)
plot(tRet2Trans,-rad2deg(omegaMax4)*ones(1,length(tRet2Trans)),'k',lineWidth=1.5)
xlabel('$$t$$ [s]','Interpreter','latex')
ylabel('$$\dot\theta_4(t)$$ $$[^\circ/s]$$','Interpreter','latex')
title('Joint velocities 4','Interpreter','latex')
set(gca,'FontSize',15)

subplot(3,4,9)
plot(tRet2Trans,rad2deg(qddRet2Trans(1,:)),'r',lineWidth=1.5)
xlabel('$$t$$ [s]','Interpreter','latex')
ylabel('$$\ddot\theta_1(t)$$ $$[^\circ/s^2]$$','Interpreter','latex')
title('Joint acceleration 1','Interpreter','latex')
set(gca,'FontSize',15)
subplot(3,4,10)
plot(tRet2Trans,rad2deg(qddRet2Trans(2,:)),'b',lineWidth=1.5)
xlabel('$$t$$ [s]','Interpreter','latex')
ylabel('$$\ddot\theta_2(t)$$ $$[^\circ/s^2]$$','Interpreter','latex')
title('Joint acceleration 2','Interpreter','latex')
set(gca,'FontSize',15)
subplot(3,4,11)
plot(tRet2Trans,rad2deg(qddRet2Trans(3,:)),'g',lineWidth=1.5)
xlabel('$$t$$ [s]','Interpreter','latex')
ylabel('$$\ddot\theta_3(t)$$ $$[^\circ/s^2]$$','Interpreter','latex')
title('Joint acceleration 3','Interpreter','latex')
set(gca,'FontSize',15)
subplot(3,4,12)
plot(tRet2Trans,rad2deg(qddRet2Trans(4,:)),'m',lineWidth=1.5)
xlabel('$$t$$ [s]','Interpreter','latex')
ylabel('$$\ddot\theta_4(t)$$ $$[^\circ/s^2]$$','Interpreter','latex')
title('Joint acceleration 4','Interpreter','latex')
set(gca,'FontSize',15)
sgtitle('Retrieval to Transfer', 'Interpreter','latex','FontSize',20,'FontWeight','bold');
end