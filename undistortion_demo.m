% Photogrammetry Demo for Pinhole Camera

imds = imageDatastore('C:\Photogrammetry_Photos'); %path to image files
nimages = numel(imds.Files); %make sure the images are in the same orientation

%make sure to import the calibration session from the Camera Calibrator into the Workspace first
pinholeIntrinsics = calibrationSession.CameraParameters.Intrinsics %intrinsic parameters of a pinhole camera from a calibration session from before

%undistort and save images
for i = 1:nimages
    [undistImage, camIntrinsics] = undistortImage(readimage(imds, i), pinholeIntrinsics);
    
    image_set{i} = imshow(undistImage) % Show the undistorted image in Figure Viewer
    save_name = sprintf('undistorted_%d',i)
    saveas(gcf,strcat(save_name,'.jpg'))
end

close all



