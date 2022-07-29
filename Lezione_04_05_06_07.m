% =======================
% ====== Lezione 04 =====
% =======================

x = [1,2,3];

repmat(x,1,3) % [1 2 3 1 2 3 1 2 3]

% fliplr(x)

% =======================
% ====== Lezione 05 =====
% =======================

% How can I add two functions in the same graph?
% x = 1:0.1:5;
% y1 = log(x);
% y2 = log10(x);
% 
% plot(x,y1, 'r')
% hold on
% plot(x,y2, 'b')
% title("Funzioni"),xlabel('x'), ylabel('x' ),legend('log', 'log10')

% Closing one figure 
% clf
% close all


% =======================
% ====== Lezione 06 =====
% =======================

% How to read a file?

% Reading an audio
% [Y, f] = audioread("media/Allora.wav");
% sound(Y, f);      % listen to audio

% Reading an image
% x = image("media/im.jpg")
% imread("media/im.jpg")







