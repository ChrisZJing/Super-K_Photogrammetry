# Super-K_Photogrammetry
This is a collection of MATLAB scripts used to perform a photogrammetry (3D stereoscopic reconstruction) demonstration.

undistortion_demo.m:
  Takes in a set of calibration images taken by the same camera. Calibrate the camera using the standard pinhole model
  in MATLAB's calibration toolbox. Generate the undistorted version of the input images and a calibration session file.

PG_demo_floor.m:
  Script used to complete the 3D reconstruction of a swimming pool floor pattern using a set of undistorted images. 
  
PG_demo_wall.m:
  Script used to complete the 3D reconstruction of a swimming pool wall pattern using a set of undistorted images. 

StructureFromMotionFromMultipleViewsExample.mlx:
  A sample command file from MATLAB for Structure from Motion (SfM). A process of estimating the 3D structure of 
  a scene from a set of 2D views. For details, see https://www.mathworks.com/help/vision/examples/structure-from-motion-from-multiple-views.html. 
