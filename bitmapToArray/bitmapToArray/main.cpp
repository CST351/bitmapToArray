#include <iostream>
#include <fstream>
#include <string>
#include <iomanip>


using std::ifstream;
using std::ofstream;
using std::string;
using std::ios;
using std::streampos;
using std::istringstream;

using std::cout;
using std::cin;

int main(int argv, char* argc[])
{
	unsigned char header[34];
	unsigned char* buffer = NULL;
	int fileInSize = 0;
	int bitmapSize = 0;
	int bitmapPos = 0;
	int width = 0;
	int height = 0;
	string filename;
	string newFilename;

	ifstream fileIn;
	ofstream fileOut;

	if (argv < 2)
	{
		cout << "Enter file name: ";
		cin >> filename;
		//filename = "C:\\Users\\Cory\\Desktop\\bitmapToArray\\Debug\\" + filename;
	}
	else
		filename = argc[1];

	fileIn.open( filename, ios::in|ios::binary);

	if (!fileIn.good())
	{
		cout << "Invalid arg: fileIn not found\n";
		return -1;
	}

	if (fileIn.is_open())
	{

		//read header
		fileIn.read (((char*)header), 34);

		if (header[0] != 0x42 || header[1] != 0x4D)
		{
			cout << "Invalid arg: only supports \"0x424D\" bitmap files\n";
			fileIn.close();
			return -2;
		}

		fileInSize = header[5] << 24 | header[4] << 16 | header[3]<<8 | header[2];
		cout << "Total fileIn size: " << fileInSize << "bytes\n";

		bitmapPos = (header[13] << 24 | header[12] << 16 | header[11]<<8 | header[10]);

		bitmapSize = fileInSize - bitmapPos;
		cout << "Total fileIn size: " << bitmapSize << "bytes\n";

		height = (header[25] << 24 | header[24] << 16 | header[23]<<8 | header[22]);
		width =  (header[21] << 24 | header[20] << 16 | header[19]<<8 | header[18]);

		cout << "image width:  " << width  << "\n";
		cout << "image height: " << height << "\n";

		fileIn.seekg(bitmapPos);

		if ( (header[33] << 24 | header[32] << 16 | header[31]<<8 | header[30]) != 3)
		{
			cout << "Error: only supports RGB565 compression\n";
			fileIn.close();
			return -3;
		}

		buffer = new unsigned char[bitmapSize];	

		fileIn.read( ((char*)buffer), bitmapSize );
		fileIn.close();

		char *dup = strdup(filename.c_str());
		string token = strtok(dup, ".");

		newFilename = token +".v";
		fileOut.open(newFilename, ios::out);
		free(dup);

		if (fileOut.is_open())
		{

			fileOut << "//---Example Use---\n"
					<< "// " << token << " image1 (\n"		//display example usage
					<< "//\t.pixel(),\n"
					<< "//\t.color(),\n"
					<< "//\t.width(),\n"
					<< "//\t.height()\n"
					<< "//);\n\n";

			fileOut << "module " << token << " (\n"			//module setup
					<< "\tinput wire [16:0] pixel,\n"
					<< "\toutput wire [8:0] width, height,\n"
					<< "\toutput reg [15:0] color\n"
					<< ");\n\n";

			fileOut << "\treg [15:0] image [" << (width*height)-1 << ":0] = '{\n"; //setup a register

			int padding = (width%2);	//bitmaps need 4 bytes per scanline, two bytes per color, 2*2 = 4

			fileOut  << std::hex;

			for (int j = (height); j > 0; j--)
			{
				int row = (((width)+padding)*(j-1)*2);
				fileOut << "\t\t";
				for (int i = 1; i < width; i++)
				{
					
					int col = (i*2)-1; //zero indexed col
					
					fileOut <<"16'h"  << (int) buffer[(row + col )] << (int) buffer[row + (col-1) ]; 
					if (i != 1 || j != 1)
						fileOut <<", ";
				}

				fileOut << "\n";
			}
			fileOut << "};\n\n";

			fileOut << std::setfill(' ') << std::setw(0) << std::dec; 

			fileOut << "\tassign width  = " << width << ";\n";
			fileOut << "\tassign height = " << height << ";\n\n";
			fileOut << "\tassign color  = image[pixel];\n";

			fileOut << "\nendmodule\n";

			fileOut.close();
		}
		else
		{
			cout << "Error: could not open \"" << newFilename << "\"\n";
			return -4;
		}

	}
	else
	{
		cout << "fileIn error: could not open fileIn\n";
		return -5;
	}

	delete [] buffer;

	cout << "<Done>\n";

	return 0;
}