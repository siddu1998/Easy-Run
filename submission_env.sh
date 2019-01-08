#!/bin/bash

echo "𝓢𝓾𝓶𝓶𝓮𝓻 𝓪𝓽 𝓖𝓮𝓸𝓻𝓰𝓲𝓪 𝓣𝓮𝓬𝓱 "
echo "|------------------------------------|"
echo "**Hello Professor Dr.Tsai, Anirban and Nicolas
Welcome to the submission of the assignment module.**"
echo "|------------------------------------|"

echo "----------------------------"
echo "Choosing yes for the below might take 20 minutes for setting up the environment"
echo "Recommended: press n/N and, consider watching the real time in the youtube link provided"
echo "Do you want to set the env for real_time  (on live video stream) [y/N]"
echo "----------------------------|"
read var


#creating env root
mkdir gtech_submission_env
#moving into root
cd gtech_submission_env




#creating env
virtualenv --system-site-packages -p python3 ./$gtech_submission
#activate
source bin/activate


#setting up pip
sudo apt-get install python3-setuptools
sudo easy_install3 pip


#cloning repo for easy setup 
git clone https://github.com/siddu1998/Easy-Run.git

#setting up tensorflow and matplotlib
pip install tensorflow
pip install matplotlib



if  [ "$var" = "Y" ] || [ "$var" = "y" ]
then

	OPENCV_VERSION='3.4.2'



	sudo apt-get -y update
	sudo apt-get -y upgrade

	sudo apt-get install -y build-essential cmake
	sudo apt-get install -y qt5-default libvtk6-dev
	sudo apt-get install -y zlib1g-dev libjpeg-dev libwebp-dev libpng-dev libtiff5-dev libjasper-dev libopenexr-dev libgdal-dev
	sudo apt-get install -y libdc1394-22-dev libavcodec-dev libavformat-dev libswscale-dev libtheora-dev libvorbis-dev libxvidcore-dev libx264-dev yasm libopencore-amrnb-dev libopencore-amrwb-dev libv4l-dev libxine2-dev
	sudo apt-get install -y libtbb-dev libeigen3-dev
	sudo apt-get install -y python-dev python-tk python-numpy python3-dev python3-tk python3-numpy
	sudo apt-get install -y ant default-jdk
	sudo apt-get install -y doxygen


	sudo apt-get install -y unzip wget
	wget https://github.com/opencv/opencv/archive/${OPENCV_VERSION}.zip
	unzip ${OPENCV_VERSION}.zip
	rm ${OPENCV_VERSION}.zip
	mv opencv-${OPENCV_VERSION} OpenCV
	cd OpenCV
	mkdir build
	cd build
	cmake -DWITH_QT=ON -DWITH_OPENGL=ON -DFORCE_VTK=ON -DWITH_TBB=ON -DWITH_GDAL=ON -DWITH_XINE=ON -DBUILD_EXAMPLES=ON -DENABLE_PRECOMPILED_HEADERS=OFF ..
	make -j4
	sudo make install
	sudo ldconfig
	cd ..
	cd ..
	cd Easy-Run


    
	echo "𝓢𝓾𝓶𝓶𝓮𝓻 𝓪𝓽 𝓖𝓮𝓸𝓻𝓰𝓲𝓪 𝓣𝓮𝓬𝓱"
	echo "Thank you for your patience, feel free to run the following scripts for demonstration"
	echo "----------------------"
	echo "1. To run using matplotlib [recommended] use red_round_detection_matplotlib.py        "
	echo "2. To run using opencv on images use red_round_detection_opencv.py		    "
	echo "3. To run on real time video detection use realtime_detection.py			    "	
	echo "----------------------"

	echo "Explore More code and segments of training pipeline"
	echo "----------------------"
	echo "For further more and clear understanding of various parts which include"
	echo "1. Understanding the dataset"
	echo "2. Histogram enhancment	  "
	echo "3. Reports and results      "
	echo "4. csv's and records	  " 
	echo "Please clone the following repository"
	echo "https://github.com/siddu1998/Travel-Assistance"
	echo "----------------------"
	echo "For real time detction on android please clone and use the .apk in it on your android phone!"
	echo "https://github.com/siddu1998/Android-Detection-curl-.git"
	echo " 			or 				      "
	echo "https://drive.google.com/open?id=18jwEmvFp4UshHjaDVS2s96V0ifgz1wZt for the .apk"
	echo "----------------------"


else
	echo "𝓢𝓾𝓶𝓶𝓮𝓻 𝓪𝓽 𝓖𝓮𝓸𝓻𝓰𝓲𝓪 𝓣𝓮𝓬𝓱"
	echo "Thank you for your patience, feel free to run the following scripts for demonstration"
	echo "-------------------------------"
	echo "1. To run using matplotlib [recommended] use red_round_detection_matplotlib.py        "
	echo "-------------------------------"

	echo "Explore More code and segments of training pipeline"
	echo "-------------------------------"
	echo "For further more and clear understanding of various parts which include"
	echo "1. Understanding the dataset"
	echo "2. Histogram enhancment	  "
	echo "3. Reports and results      "
	echo "4. csv's and records	  " 
	echo "Please clone the following repository"
	echo "https://github.com/siddu1998/Travel-Assistance"
	echo "-------------------------------"
	echo "For real time detction on android please clone and use the .apk in it on your android phone!"
	echo "https://github.com/siddu1998/Android-Detection-curl-.git"
	echo " 			or 				      "
	echo "https://drive.google.com/open?id=18jwEmvFp4UshHjaDVS2s96V0ifgz1wZt for the .apk"
	echo "-------------------------------"

fi



