t=0:0.1:10*pi;
y=sin(pi*t);
fft_y=fft(y);
figure
plot(y)

fft_padding_y=[fft_y(1:158),zeros(1,100),fft_y(159:315)];
% plot(abs(fft_padding_y));

ifft_y_padding=ifft(fft_padding_y);
figure
plot(ifft_y_padding)