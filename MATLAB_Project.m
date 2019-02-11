%Tristan De Alwis
%December, 2014

clear ; close all; clc
run('ydata1.m');
run('ydata2.m');
run('zdata1.m');
run('zdata2.m');

L_1y = y_1(:,2); %Defines a vector for forces on the left foot plate of Subject #1
R_1y = y_1(:, 3); %Defines a vector for forces on the right foot plate of Subject #1
B_1y = y_1(:, 4); %Defines a vector for forces on the butt plate of Subject #1

F_1y = L_1y + R_1y + B_1y; % Summation of the y component forces

t_1 = 0:2439; %Creates a time vector

subplot(2, 2, 1)
plot(t_1, F_1y)
xlabel('Time (ms)');
ylabel('Force (N)');
title('Subject #1 y Component Forces as a Function of Time');

L_1z = z_1(:,2); %Defines a vector for forces on the left foot plate of Subject #1
R_1z = z_1(:, 3); %Defines a vector for forces on the right foot plate of Subject #1
B_1z = z_1(:, 4); %Defines a vector for forces on the butt plate of Subject #1

F_1z = L_1z + R_1z + B_1z; % Summation of the y component forces

subplot(2, 2, 2)
plot(t_1, F_1z)
xlabel('Time (ms)');
ylabel('Force (N)');
title('Subject #1 z Component Forces as a Function of Time');

L_2y = y_2(:,2); %Defines a vector for forces on the left foot plate of Subject #2
R_2y = y_2(:, 3); %Defines a vector for forces on the right foot plate of Subject #2
B_2y = y_2(:, 4); %Defines a vector for forces on the butt plate of Subject #2

F_2y = L_2y + R_2y + B_2y; % Summation of the y component forces

t_2 = 0:2612; %Creates a time vector

subplot(2, 2, 3)
plot(t_2, F_2y)
xlabel('Time (ms)');
ylabel('Force (N)');
title('Subject #2 y Component Forces as a Function of Time');

L_2z = z_2(:,2); %Defines a vector for forces on the left foot plate of Subject #2
R_2z = z_2(:, 3); %Defines a vector for forces on the right foot plate of Subject #2
B_2z = z_2(:, 4); %Defines a vector for forces on the butt plate of Subject #2

F_2z = L_2z + R_2z + B_2z; % Summation of the y component forces

subplot(2, 2, 4)
plot(t_2, F_2z)
xlabel('Time (ms)');
ylabel('Force (N)');
title('Subject #2 z Component Forces as a Function of Time');

m_1 = 67; %Mass of Subject #1
m_2 = 62.75; %Mass of Subject #2

a_G1y = F_1y/m_1; %Subject #1: CoM Acceleration in the y direction
a_G2y = F_2y/m_2; %Subject #2: CoM Acceleration in the y direction

figure (2)
subplot(3, 2, 1)
plot(t_1, a_G1y)
xlabel('Time (ms)');
ylabel('Acceleration (m/ms^2)');
title('Subject #1: CoM acceleration in the y direction');

figure (2)
subplot(3, 2, 2)
plot(t_2, a_G2y)
xlabel('Time (ms)');
ylabel('Acceleration (m/ms^2)');
title('Subject #2: CoM acceleration in the y direction');

for i = 0:2439;
    S = a_G1y.*0.001.*i;
    v_G1y = S; %Subject #1: CoM velocity in the y direction
end

for i = 0:2612;
    S = a_G2y.*0.001.*i;
    v_G2y = S; %Subject #1: CoM velocity in the y direction
end

figure (2)
subplot(3, 2, 3)
plot(t_1, v_G1y)
xlabel('Time (ms)');
ylabel('Acceleration (m/ms^2)');
title('Subject #1: CoM velocity in the y direction');

figure (2)
subplot(3, 2, 4)
plot(t_2, v_G2y)
xlabel('Time (ms)');
ylabel('Acceleration (m/ms^2)');
title('Subject #2: CoM velocity in the y direction');

s_G1y = v_G1y.*0.001; %Subject #1: CoM position in the y direction
s_G2y = v_G2y.*0.001; %Subject #2: CoM position in the y direction

figure (2)
subplot(3, 2, 5)
plot(t_1, s_G1y)
xlabel('Time (ms)');
ylabel('Acceleration (m/ms^2)');
title('Subject #1: CoM position in the y direction');

figure (2)
subplot(3, 2, 6)
plot(t_2, s_G2y)
xlabel('Time (ms)');
ylabel('Acceleration (m/ms^2)');
title('Subject #2: CoM position in the y direction');

a_G1z = F_1z/m_1; %Subject #1: CoM Acceleration in the y direction
a_G2z = F_2z/m_2; %Subject #2: CoM Acceleration in the y direction

figure (3)
subplot(3, 2, 1)
plot(t_1, a_G1z)
xlabel('Time (ms)');
ylabel('Acceleration (m/ms^2)');
title('Subject #1: CoM acceleration in the z direction');

figure (3)
subplot(3, 2, 2)
plot(t_2, a_G2z)
xlabel('Time (ms)');
ylabel('Acceleration (m/ms^2)');
title('Subject #2: CoM acceleration in the z direction');

for i = 0:2439;
    S = a_G1z.*0.001.*i;
    v_G1z = S; %Subject #1: CoM velocity in the y direction
end

for i = 0:2612;
    S = a_G2z.*0.001.*i;
    v_G2z = S; %Subject #1: CoM velocity in the y direction
end

figure (3)
subplot(3, 2, 3)
plot(t_1, v_G1z)
xlabel('Time (ms)');
ylabel('Acceleration (m/ms^2)');
title('Subject #1: CoM velocity in the z direction');

figure (3)
subplot(3, 2, 4)
plot(t_2, v_G2z)
xlabel('Time (ms)');
ylabel('Acceleration (m/ms^2)');
title('Subject #2: CoM velocity in the z direction');

s_G1z = v_G1z.*0.001; %Subject #1: CoM position in the z direction
s_G2z = v_G2z.*0.001; %Subject #2: CoM position in the z direction

figure (3)
subplot(3, 2, 5)
plot(t_1, s_G1z)
xlabel('Time (ms)');
ylabel('Acceleration (m/ms^2)');
title('Subject #1: CoM position in the z direction');

figure (3)
subplot(3, 2, 6)
plot(t_2, s_G2z)
xlabel('Time (ms)');
ylabel('Acceleration (m/ms^2)');
title('Subject #2: CoM position in the z direction');

figure(4)
TheFace = imread('2013-09-19 07.01.45.jpg');

image(TheFace)