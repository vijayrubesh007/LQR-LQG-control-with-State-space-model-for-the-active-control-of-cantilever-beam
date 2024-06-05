
bo1=(165.7709)^2/(6.70E+05);
ao1=[1 2*(0.013565)*(165.7709) (165.7709)^2];

tf1a=tf(bo1,ao1);

bo2=(1080.9838)^2/(2.10E+7);
ao2=[1 2*(0.006582)*(1080.9838) (1080.9838)^2];

tf2a=tf(bo2,ao2);


bo3=(135.96)^2/(3.72E+5);
ao3=[1 2*(0.030226)*(135.96) (135.96)^2];

tf1f=tf(bo3,ao3);

bo4=(878.9284)^2/(3.3E+7);
ao4=[1 2*(0.009588)*(878.9284) (878.9284)^2];

tf2f=tf(bo4,ao4);



tff=tf1f+tf2f;
tfa=tf1a+tf2a;



figure(1)
bode(tff);
title('Bode plot for disturbance force F')

figure(2)
bode(tfa);
title('Bode plot for Actuating force Fa')

[A_f,B_f,C_f,D_f]=ssdata(ss(tff));
[A_a,B_a,C_a,D_a]=ssdata(ss(tfa));

