#include <cv.h>
#include <highgui.h>
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"

using namespace cv;

int main( int argc, char** argv )
{
  char* imageName = argv[1];

  Mat image;
  image = imread( imageName, 1 );
  //create 2 empty windows
 namedWindow( "Original Image" , CV_WINDOW_NORMAL );
 namedWindow( "Smoothed Image" , CV_WINDOW_NORMAL );

 // Load an image from file
 Mat src = imread( imageName, CV_LOAD_IMAGE_UNCHANGED );

 //show the loaded image
 imshow( "Original Image", src );

 Mat dst;
 char zBuffer[35];

 for ( int i = 1; i  <  31; i = i + 2 )
 {
  //copy the text to the "zBuffer"
  snprintf(zBuffer, 35,"Kernel Size : %d x %d", i, i);

  //smooth the image using Bilateral filter in the "src" and save it to "dst"
  bilateralFilter( src, dst, i, i, i);

  //put the text in the "zBuffer" to the "dst" image
  putText( dst, zBuffer, Point( src.cols/4, src.rows/8), CV_FONT_HERSHEY_COMPLEX, 1, Scalar(255, 255, 255), 2 );

  //show the blurred image with the text
  imshow( "Smoothed Image", dst );

  //wait for 2 seconds
  int c = waitKey(2000);

  //if the "esc" key is pressed during the wait, return
  if (c == 27)
  {
   return 0;
  }
 }

 //make the "dst" image, black
 dst = Mat::zeros( src.size(), src.type() );

 //copy the text to the "zBuffer"
 snprintf(zBuffer, 35,"Press Any Key to Exit");

 //put the text in the "zBuffer" to the "dst" image
 putText( dst, zBuffer, Point( src.cols/4,  src.rows / 2), CV_FONT_HERSHEY_COMPLEX, 1, Scalar(255, 255, 255) );

 //show the black image with the text
 imshow( "Smoothed Image", dst );

 //wait for a key press infinitely
 //waitKey(0);



 if( argc != 2 || !image.data )
 {
   printf( " No image data \n " );
   return -1;
 }

 Mat gray_image;
 cvtColor( image, gray_image, CV_BGR2GRAY );

 imwrite( "../../images/Gray_Image.jpg", gray_image );

 namedWindow( imageName, CV_WINDOW_NORMAL );
 namedWindow( "Gray image", CV_WINDOW_NORMAL );

 imshow( imageName, image );
 imshow( "Gray image", gray_image );

 waitKey(0);

 return 0;
}
