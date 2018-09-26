
clc;
clear;
signal = [0,1,0,1,0,1,0,0,1,1];
voltage_level = 5;

bit_diff = 1;
t = 0:0.01:length(signal);

for j =1:length(t)
    if t(j) < bit_diff;
        unipolar_signal(j) = signal(bit_diff)*voltage_level;
    else 
        unipolar_signal(j) = signal(bit_diff)*voltage_level;
        bit_diff = bit_diff + 1;     
    end   
end

plot(t,unipolar_signal,'g');axis([0,length(signal) -1 8]);


total_time = length(signal);
bit_rate = 1;
index = 1;
bit_points = (length(unipolar_signal)-1)/(total_time*bit_rate);
temp = bit_points;
voltage_l = 5;
for j =1:length(unipolar_signal)
    if j < temp
    else 
        demodulated_signal(index) = abs(unipolar_signal(j))/voltage_l;
        index=index+1;
        temp = temp + bit_points;
    end   
end
demodulated_signal
