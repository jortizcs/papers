%%
%StreamFS fuse-mount query and plotting

cd ~;

clear power_2216;
clear power_2218;
clear power_2219;
clear power_2223;
clear power_2224;

% system('touch /Users/jortiz81/StreamFS/streamfs-fuse/power_2218_10000s.dat');
% system('touch
% /Users/jortiz81/StreamFS/streamfs-fuse/power_2219_10000s.dat');
% system('touch /Users/jortiz81/StreamFS/streamfs-fuse/power_2224_10000s.dat')

system('echo "ts_timestamp=gt:now-10000" > /Users/jortiz81/StreamFS/streamfs-fuse/mac_osx/tmp/homes/jorge/acmes/2216/power');
system('cp /Users/jortiz81/StreamFS/streamfs-fuse/mac_osx/tmp/homes/jorge/acmes/2216/power /Users/jortiz81/StreamFS/streamfs-fuse/power_2216_10000s.dat');
power_2216 = importdata('/Users/jortiz81/StreamFS/streamfs-fuse/power_2216_10000s.dat');
system('rm -f /Users/jortiz81/StreamFS/streamfs-fuse/power_2216_10000s.dat');

system('echo "ts_timestamp=gt:now-10000" > /Users/jortiz81/StreamFS/streamfs-fuse/mac_osx/tmp/homes/jorge/acmes/2218/power');
system('cp /Users/jortiz81/StreamFS/streamfs-fuse/mac_osx/tmp/homes/jorge/acmes/2218/power /Users/jortiz81/StreamFS/streamfs-fuse/power_2218_10000s.dat');
power_2218 = importdata('/Users/jortiz81/StreamFS/streamfs-fuse/power_2218_10000s.dat');
system('rm -f /Users/jortiz81/StreamFS/streamfs-fuse/power_2218_10000s.dat');

system('echo "ts_timestamp=gt:now-10000" > /Users/jortiz81/StreamFS/streamfs-fuse/mac_osx/tmp/homes/jorge/acmes/2219/power');
system('cp /Users/jortiz81/StreamFS/streamfs-fuse/mac_osx/tmp/homes/jorge/acmes/2219/power /Users/jortiz81/StreamFS/streamfs-fuse/power_2219_10000s.dat');
power_2219 = importdata('/Users/jortiz81/StreamFS/streamfs-fuse/power_2219_10000s.dat');
system('rm -f /Users/jortiz81/StreamFS/streamfs-fuse/power_2219_10000s.dat');

system('echo "ts_timestamp=gt:now-10000" > /Users/jortiz81/StreamFS/streamfs-fuse/mac_osx/tmp/homes/jorge/acmes/2223/power');
system('cp /Users/jortiz81/StreamFS/streamfs-fuse/mac_osx/tmp/homes/jorge/acmes/2223/power /Users/jortiz81/StreamFS/streamfs-fuse/power_2223_10000s.dat');
power_2223 = importdata('/Users/jortiz81/StreamFS/streamfs-fuse/power_2223_10000s.dat');
system('rm -f /Users/jortiz81/StreamFS/streamfs-fuse/power_2223_10000s.dat');

system('echo "ts_timestamp=gt:now-10000" > /Users/jortiz81/StreamFS/streamfs-fuse/mac_osx/tmp/homes/jorge/acmes/2224/power');
system('cp /Users/jortiz81/StreamFS/streamfs-fuse/mac_osx/tmp/homes/jorge/acmes/2224/power /Users/jortiz81/StreamFS/streamfs-fuse/power_2224_10000s.dat');
power_2224 = importdata('/Users/jortiz81/StreamFS/streamfs-fuse/power_2224_10000s.dat');
system('rm -f /Users/jortiz81/StreamFS/streamfs-fuse/power_2224_10000s.dat');

subplot(5,1,1);
line1_h=plot(power_2216(:,1), power_2216(:,2)); hold on; 
set(line1_h, 'DisplayName', 'coffee_maker');
set(line1_h, 'LineStyle', '-');
legend(line1_h, 'coffee maker');
ylabel('value');

subplot(5,1,2);
line2_h=plot(power_2218(:,1), power_2218(:,2)); hold on; 
set(line2_h, 'DisplayName', 'lenovo');
set(line2_h, 'LineStyle', '-');
legend(line2_h, 'lenovo');
ylabel('value');

subplot(5,1,3);
line3_h=plot(power_2219(:,1), power_2219(:,2)); hold on; 
set(line3_h, 'DisplayName', 'macbook');
set(line3_h, 'LineStyle', '-');
legend(line3_h, 'macbook');
ylabel('value');

subplot(5,1,4);
line4_h=plot(power_2224(:,1), power_2224(:,2)); hold off;
set(line4_h, 'DisplayName', 'desklamp');
set(line4_h, 'LineStyle', '--');
legend(line4_h, 'desklamp');

subplot(5,1,5);
line5_h=plot(power_2223(:,1), power_2223(:,2)); hold off;
set(line5_h, 'DisplayName', 'nightlamp');
set(line5_h, 'LineStyle', '--');
legend(line5_h, 'night lamp');

xlabel('unixtime');
ylabel('value');



%% Demo

cd ~;

clear power_2218;
clear power_2219;
clear power_2223;

system('echo "ts_timestamp=gt:now-10000" > /Users/jortiz81/StreamFS/streamfs-fuse/mac_osx/tmp/homes/jorge/acmes/2218/power');
system('cp /Users/jortiz81/StreamFS/streamfs-fuse/mac_osx/tmp/homes/jorge/acmes/2218/power /Users/jortiz81/StreamFS/streamfs-fuse/power_2218_10000s.dat');
power_2218 = importdata('/Users/jortiz81/StreamFS/streamfs-fuse/power_2218_10000s.dat');
system('rm -f /Users/jortiz81/StreamFS/streamfs-fuse/power_2218_10000s.dat');

system('echo "ts_timestamp=gt:now-10000" > /Users/jortiz81/StreamFS/streamfs-fuse/mac_osx/tmp/homes/jorge/acmes/2219/power');
system('cp /Users/jortiz81/StreamFS/streamfs-fuse/mac_osx/tmp/homes/jorge/acmes/2219/power /Users/jortiz81/StreamFS/streamfs-fuse/power_2219_10000s.dat');
power_2219 = importdata('/Users/jortiz81/StreamFS/streamfs-fuse/power_2219_10000s.dat');
system('rm -f /Users/jortiz81/StreamFS/streamfs-fuse/power_2219_10000s.dat');

system('echo "ts_timestamp=gt:now-10000" > /Users/jortiz81/StreamFS/streamfs-fuse/mac_osx/tmp/homes/jorge/acmes/2223/power');
system('cp /Users/jortiz81/StreamFS/streamfs-fuse/mac_osx/tmp/homes/jorge/acmes/2223/power /Users/jortiz81/StreamFS/streamfs-fuse/power_2223_10000s.dat');
power_2223 = importdata('/Users/jortiz81/StreamFS/streamfs-fuse/power_2223_10000s.dat');
system('rm -f /Users/jortiz81/StreamFS/streamfs-fuse/power_2223_10000s.dat');


subplot(3,1,1);
line2_h=plot(power_2218(:,1), power_2218(:,2)); hold on; 
set(line2_h, 'DisplayName', 'lenovo');
set(line2_h, 'LineStyle', '-');
legend(line2_h, 'lenovo');
ylabel('value');

subplot(3,1,2);
line3_h=plot(power_2219(:,1), power_2219(:,2)); hold on; 
set(line3_h, 'DisplayName', 'macbook');
set(line3_h, 'LineStyle', '-');
legend(line3_h, 'macbook');
ylabel('value');

subplot(3,1,3);
line4_h=plot(power_2224(:,1), power_2224(:,2)); hold off;
set(line4_h, 'DisplayName', 'desklamp');
set(line4_h, 'LineStyle', '--');
legend(line4_h, 'desklamp');


xlabel('unixtime');
ylabel('value');



