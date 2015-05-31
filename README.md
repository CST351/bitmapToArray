# bitmapToArray
A C++ program that takes a bitmap RGB565 and converts it to an array in Verilog for a tft display




Only supports RGB565 bmp files,

This is because the tft display this was 
developed for only supports RGB565

This program was developed in visual studios,
but should compile using gcc just fine.


    How to use:
      1) First find the image you use and export as a .bmp file
         with RGB565 compression. We recommend using GIMP as it
         provides the necessary options and is free to use.
         
      2) Now run the executable, works best if the executable is 
         in the same file as the .bmp file. You can either run 
         the executable then enter the file manually, but we
         recommend using it in the command line and sending the
         .bmp file as the argument so you can read any errors
         you may come across.

Now the file it comes out to be will be a .v for verilog. 
This is simple because it is the language we are using for
our Terassic DE2-115 board. The code would have to be 
altered if a different language was desired or the output 
file could be edited alternatively.
