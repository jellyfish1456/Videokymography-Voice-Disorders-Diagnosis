workingDir = 'C:\Users\xxxxxx';
mkdir(workingDir)
mkdir(workingDir,'2')
shuttleVideo = VideoReader('your_filename.mp4')
ii = 1;
while hasFrame(shuttleVideo)
   img = readFrame(shuttleVideo);
   filename = [sprintf('%03d',ii) '.jpg'];
   fullname = fullfile(workingDir,'2',filename);
   imwrite(img,fullname)    % Write out to a JPEG file (img1.jpg, img2.jpg, etc.)
   ii = ii+1;
end

%%
clc
clear all;

%%First, you have to go to the location of your image which you store
pathfolder = 'C:\Users\xxxxxx\2'%The folder of your images
path=[pathfolder];
file=dir([path '\*.jpg']);%All images in the folder
A=imread('001.jpg');%Set the first image as the beginning 
B = A(230:235,:,:);%Set the needed range of the first image
% imshow(B)

% B=[];
% for i=1:1:size(file)  %All images read at the same time
for i=1:1:size(file)%% Set the needed numbers of images, from 1 to 100
A = imread(file(i).name);
B = [B ;A(230:235,:,:)];%Set the following images for their needed range
end

imshow(B)
