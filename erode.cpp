//#include "stdafx.h"
#include <cv.h>
#include <highgui.h>

int main()
{
        //display the original image
        IplImage* img = cvLoadImage("/home/murther/Pictures/dbwall.jpg");
        cvNamedWindow("Show Image",CV_WINDOW_NORMAL);       
	cvShowImage("Show Image", img);
	

        //erode and display the eroded image
        cvErode(img, img, 0, 2);
	cvNamedWindow("Eroded", CV_WINDOW_NORMAL);
        cvShowImage("Eroded", img);
       
        cvWaitKey(0);
       
        //cleaning up
        cvDestroyWindow("MyWindow");
        cvDestroyWindow("Eroded");
        cvReleaseImage(&img);
       
        return 0;
}
