% December 3, 2020
% Imamagini DICOM 
% DICOM files are usually files with metadata which contains metadata about
% the patient. We can find sample files here https://barre.dev/medical/samples/
clear all
close all

% --------- FILE KNEE  ---------

info= dicominfo('MR-MONO2-16-knee');
 
% Because dicominfo is a `struct` I can use the .dot notation
disp('Tipologia acquisizione')
disp(info.Modality)

disp('Tipologia sequenza')
disp(info.ScanningSequence)

disp('Risoluzione')
disp(info.PixelSpacing)

% Read DICOM file contents that is `INT16` and has to be converted to `double`
data = double(dicomread('MR-MONO2-16-knee'));
figure, imagesc(data), axis image, colorbar, colormap(gray)

% Going to "Spazio K" using Fourrier
D = fftshift(fft2(data)); 
figure, imagesc(log10(abs(D))), axis image, colormap(gray)

% --------- FILE HEART  ---------
info2 = dicominfo('MR-MONO2-8-16x-heart'); 

data2 = double(dicomread('MR-MONO2-8-16x-heart'));

% If we use 'whos' we will see thata data2 has dimension 256x256x1x16
% Why? Because we acquired 16 images of 256x256 → Multiframe → Video
% To remove the `1` I use the command `squeeze`
data2 = squeeze(data2);

% To visualize, for example, the image 3, I can use `imagesc`

figure, imagesc(data2(:,:,3)), axis image, colormap(gray)

% To visualize all 16 images we need a `for`
figure
for n=1:4
    for k=1:16
        imagesc(data2(:,:,k)), axis image, colormap(gray)
        drawnow
        pause(0.2)
    end
end

