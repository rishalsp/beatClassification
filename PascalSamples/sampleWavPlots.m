clc
clear all
[y, fs] = audioread(['sampleMurmur.wav']);
soundsc(y, fs);  % Here is where we actually play the music from the speakers.
% Plot the original waveform.
subplot(2, 1, 1);
plot(y, 'b-');
grid on;nfft=1024;
drawnow;w = sqrt(hann(nfft)); noveralp=256;
subplot(2, 1, 2);
[spec,f,t]=spectrogram(y,w,noveralp,nfft,fs);
surf(t, f, 20*log10(abs(spec)), 'EdgeColor', 'none');
axis xy; 
axis tight; 
colormap(jet); view(0,90);