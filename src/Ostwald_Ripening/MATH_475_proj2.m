%% MATH_475_proj.m
% Author: Alex Greenhalgh,3/22/22
%
% Purpose: Graph results from c++ program
clear all,close all;

%% Part 1
Delimiter = ' ';
Headerlinesin = 7;
filename = 'Euler_out.txt'
data = importdata(filename, Delimiter,Headerlinesin);
% Column one is time and two is crystal size
time = data.data(:,2);
x_t_1 = data.data(:,3);
x_t_2 = data.data(:,4);

crit_1 = 0.00511351;
crit_2 = 0.095096;
%Prettier colors than default
str1 = '#E03A3E'; %Red
str2 = '#963D97'; %purple
str3 = '#61BB46'; %Green
Red = sscanf(str1(2:end),'%2x%2x%2x',[1 3])/255;
Purple = sscanf(str2(2:end),'%2x%2x%2x',[1 3])/255;
Green = sscanf(str3(2:end),'%2x%2x%2x',[1 3])/255;
Delimiter = ' ';
Headerlinesin = 7;
filename = 'Euler_out_0.08.txt'
data = importdata(filename, Delimiter,Headerlinesin);
% Column one is time and two is crystal size
time_after = data.data(1:7205,2);
x_t_after = data.data(1:7205,3);
%plotting
figure(1)
plot(time,x_t_1,'r','linewidth', 1.5);
hold on
plot([time;time_after + max(time)],[x_t_2;x_t_after],'g','linewidth', 1.5);
%yline(crit_1,'r--','linewidth', 1.25)
%yline(crit_2,'g--','linewidth', 1.25)
%title('Case 1: x* = 0.05 ');
xlabel('Time [s]');
ylabel('x(t)');


yline(crit_1,'b--','linewidth', 1.25)
yline(crit_2,'k--','linewidth', 1.25)
axis([0 .025 0.00 0.16])

legend('x(t)_1','x(t)_2','\xi_1','\xi_2')
% Delimiter = ' ';
% Headerlinesin = 7;
% filename = 'Euler_out_0.08.txt'
% data = importdata(filename, Delimiter,Headerlinesin);
% % Column one is time and two is crystal size
% time = data.data(:,2);
% x_t = data.data(:,3);
% 
% crit_1 = 0.0835106;
% crit_2 = 0.119771;
% %Prettier colors than default
% str1 = '#E03A3E'; %Red
% str2 = '#963D97'; %purple
% str3 = '#61BB46'; %Green
% Red = sscanf(str1(2:end),'%2x%2x%2x',[1 3])/255;
% Purple = sscanf(str2(2:end),'%2x%2x%2x',[1 3])/255;
% Green = sscanf(str3(2:end),'%2x%2x%2x',[1 3])/255;
% 
% %plotting
% figure(2)
% plot(time,x_t,'k','linewidth', 1.5);
% yline(crit_1,'r--','linewidth', 1.25)
% yline(crit_2,'g--','linewidth', 1.25)
% %title('Case 2: x* = 0.08 ');
% xlabel('Time [s]');
% ylabel('x(t)');
% axis([0 0.15 0 0.17])
% legend('Crystal Size','\xi_1','\xi_2')
% 
% Delimiter = ' ';
% Headerlinesin = 7;
% filename = 'Euler_out_0.0975.txt'
% data = importdata(filename, Delimiter,Headerlinesin);
% % Column one is time and two is crystal size
% time = data.data(:,2);
% x_t = data.data(:,3);
% 
% crit_1 = 0.00484721;
% crit_2 = 0.0977162;
% %Prettier colors than default
% str1 = '#E03A3E'; %Red
% str2 = '#963D97'; %purple
% str3 = '#61BB46'; %Green
% Red = sscanf(str1(2:end),'%2x%2x%2x',[1 3])/255;
% Purple = sscanf(str2(2:end),'%2x%2x%2x',[1 3])/255;
% Green = sscanf(str3(2:end),'%2x%2x%2x',[1 3])/255;
% 
% %plotting
% figure(3)
% plot(time,x_t,'k','linewidth', 1.5);
% yline(crit_1,'r--','linewidth', 1.25)
% yline(crit_2,'g--','linewidth', 1.25)
% %title('Case 3: x* = 0.0975 ');
% xlabel('Time [s]');
% ylabel('x(t)');
% axis([0 0.01 0 0.15])
% legend('Crystal Size','\xi_1','\xi_2')
% 
% %plotting
% figure(4)
% plot(time,x_t,'k','linewidth', 1.5);
% %yline(crit_1,'r--','linewidth', 1.25)
% yline(crit_2,'g--','linewidth', 1.25)
% %title('Case 3: x* = 0.0975 ');
% xlabel('Time [s]');
% ylabel('x(t)');
% axis([0.0 0.0015 0.09725 0.098])
% legend('Crystal Size over Time','\xi_2')

