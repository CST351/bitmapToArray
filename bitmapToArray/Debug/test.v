//---Example Use---
// C:\Users\Cory\Desktop\bitmapToArray\Debug\test image1 (
//	.pixel(),
//	.color()
//	.width()
//	.height()
//);

module C:\Users\Cory\Desktop\bitmapToArray\Debug\test (
	input wire [16:0] pixel,
	output wire [8:0] width, height,
	output reg [15:0] color
);

	reg [15:0] image [927:0] = '{
00		16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'h2082, 16'hffff, 16'hffff, 16'hffff, 16'h2082, 16'h2082, 16'hffff, 16'hffff, 16'h2082, 16'h2082, 16'h2082, 16'h2082, 16'h2082, 16'h2082, 16'h2082, 16'h2082, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 
		16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'h2082, 16'h2082, 16'hffff, 16'h2082, 16'hed8d, 16'h2082, 16'hffff, 16'h2082, 16'h8b2, 16'hb3c6, 16'hdc8b, 16'hed8d, 16'hed8d, 16'hdc8b, 16'hb3c6, 16'h8b2, 16'h2082, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 
		16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'h2082, 16'hdc8b, 16'h8b2, 16'h2082, 16'hed8d, 16'hdc8b, 16'h5a4, 16'h2082, 16'hb3c6, 16'hed8d, 16'hed8d, 16'hed8d, 16'hdc8b, 16'hb3c6, 16'h8b2, 16'h5a4, 16'h2082, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 
		16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'h2082, 16'hed8d, 16'hb3c6, 16'h5a4, 16'hfe90, 16'hdc8b, 16'hdc8b, 16'h5a4, 16'h7283, 16'h8b2, 16'hb3c6, 16'hdc8b, 16'hfe90, 16'hfe90, 16'hed8d, 16'hdc8b, 16'h8b2, 16'h2082, 16'h2082, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 
		16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'h2082, 16'hb3c6, 16'hed8d, 16'h5a4, 16'hdc8b, 16'hfe90, 16'h8b2, 16'hdc8b, 16'hed8d, 16'hed8d, 16'hdc8b, 16'hb3c6, 16'hb3c6, 16'hdc8b, 16'hfe90, 16'hfe90, 16'hed8d, 16'hdc8b, 16'h8b2, 16'h2082, 16'h2082, 16'hffff, 16'hffff, 16'hffff, 
		16'hffff, 16'hffff, 16'h2082, 16'h2082, 16'h5a4, 16'h8b2, 16'h5a4, 16'h5a4, 16'h5a4, 16'h8b2, 16'hdc8b, 16'hed8d, 16'hfe90, 16'hfe90, 16'hfe90, 16'hfe90, 16'hdc8b, 16'hb3c6, 16'hdc8b, 16'hfe90, 16'hfe90, 16'hfe90, 16'hed8d, 16'hdc8b, 16'hb3c6, 16'h2082, 16'h2082, 16'h2082, 
		16'hffff, 16'h2082, 16'h8b2, 16'hb3c6, 16'h8b2, 16'h5a4, 16'hb3c6, 16'hdc8b, 16'hb3c6, 16'h8b2, 16'hed8d, 16'hb3c6, 16'hed8d, 16'hfe90, 16'hfe90, 16'hed8d, 16'hfe90, 16'hfe90, 16'hb3c6, 16'hdc8b, 16'hed8d, 16'hfe90, 16'hfe90, 16'hfe90, 16'hed8d, 16'hdc8b, 16'hb3c6, 16'h2082, 
		16'h2082, 16'h8b2, 16'hb3c6, 16'h8b2, 16'h5a4, 16'hdc8b, 16'hfe90, 16'hfe90, 16'hed8d, 16'h7283, 16'hdc8b, 16'hb3c6, 16'h8b2, 16'hed8d, 16'hfe90, 16'hfe90, 16'hdc8b, 16'hfe90, 16'hfe90, 16'h8b2, 16'hb3c6, 16'hdc8b, 16'hdc8b, 16'hdc8b, 16'hdc8b, 16'hb3c6, 16'h2082, 16'hffff, 
		16'hffff, 16'h2082, 16'h2082, 16'h2082, 16'hb3c6, 16'hfe90, 16'hfe90, 16'hed8d, 16'hdc8b, 16'hdc8b, 16'h5a4, 16'hdc8b, 16'h5a4, 16'h7283, 16'hdc8b, 16'hfe90, 16'hfe90, 16'hb3c6, 16'hfe90, 16'hed8d, 16'h8b2, 16'hb3c6, 16'hb3c6, 16'hb3c6, 16'h8b2, 16'h2082, 16'hffff, 16'hffff, 
		16'hffff, 16'hffff, 16'hffff, 16'h2082, 16'hdc8b, 16'hfe90, 16'hed8d, 16'hb3c6, 16'h7283, 16'h5a4, 16'ha2c5, 16'h5a4, 16'hd386, 16'ha2c5, 16'h5a4, 16'h5a4, 16'hdc8b, 16'hdc8b, 16'hb3c6, 16'hed8d, 16'hed8d, 16'h7283, 16'h8b2, 16'h5a4, 16'h5a4, 16'h2082, 16'hffff, 16'hffff, 
		16'hffff, 16'hffff, 16'hffff, 16'h2082, 16'hb3c6, 16'hfe90, 16'hb3c6, 16'h7283, 16'h5a4, 16'hd386, 16'he5c, 16'he5c, 16'hf692, 16'hf692, 16'he5c, 16'hd386, 16'h5a4, 16'h5a4, 16'h8b2, 16'hb3c6, 16'hdc8b, 16'hdc8b, 16'h7283, 16'hdc8b, 16'hdc8b, 16'h7283, 16'h2082, 16'h2082, 
		16'hffff, 16'hffff, 16'hffff, 16'h2082, 16'h8b2, 16'hed8d, 16'h8b2, 16'h5a4, 16'hd386, 16'ha2c5, 16'h2082, 16'h2082, 16'ha2c5, 16'he5c, 16'hf692, 16'he5c, 16'hd386, 16'ha2c5, 16'h2082, 16'h2082, 16'h2082, 16'h5a4, 16'h5a4, 16'h7283, 16'hed8d, 16'hdc8b, 16'hb3c6, 16'h2082, 
		16'hffff, 16'hffff, 16'hffff, 16'h2082, 16'h7283, 16'hdc8b, 16'h7283, 16'h2082, 16'hd386, 16'h2082, 16'h9d15, 16'h2082, 16'h2082, 16'he5c, 16'hf692, 16'hf692, 16'he5c, 16'h2082, 16'h2082, 16'h9d15, 16'h2082, 16'h2082, 16'h2082, 16'hdc8b, 16'hed8d, 16'hb3c6, 16'h2082, 16'hffff, 
		16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'h2082, 16'hb3c6, 16'h5a4, 16'h2082, 16'ha2c5, 16'h725, 16'hf79e, 16'h2082, 16'h2082, 16'he5c, 16'hf692, 16'hf692, 16'he5c, 16'h2082, 16'h2082, 16'hf79e, 16'h725, 16'ha2c5, 16'h2082, 16'hb3c6, 16'hb3c6, 16'h2082, 16'hffff, 16'hffff, 
		16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'h2082, 16'h7283, 16'h2082, 16'h2082, 16'ha2c5, 16'ha2c5, 16'hf79e, 16'h2082, 16'h725, 16'he5c, 16'hf692, 16'hf692, 16'he5c, 16'h2082, 16'h2082, 16'hf79e, 16'ha2c5, 16'ha2c5, 16'h2082, 16'h7283, 16'h2082, 16'hffff, 16'hffff, 16'hffff, 
		16'hffff, 16'hffff, 16'hffff, 16'h2082, 16'h2082, 16'h2082, 16'h2082, 16'h2082, 16'h725, 16'ha2c5, 16'hc659, 16'h725, 16'ha2c5, 16'hf692, 16'hf692, 16'hf692, 16'hf692, 16'ha2c5, 16'h725, 16'hc659, 16'ha2c5, 16'h725, 16'h2082, 16'h2082, 16'h2082, 16'h2082, 16'hffff, 16'hffff, 
		16'hffff, 16'hffff, 16'h2082, 16'hb84, 16'hd946, 16'hfa89, 16'hd946, 16'h982, 16'h2082, 16'h725, 16'ha2c5, 16'hd386, 16'he5c, 16'hf692, 16'hf692, 16'hf692, 16'hf692, 16'he5c, 16'hd386, 16'ha2c5, 16'h725, 16'h2082, 16'h700, 16'h982, 16'h982, 16'h700, 16'h2082, 16'hffff, 
		16'hffff, 16'h2082, 16'hc659, 16'hf79e, 16'hf79e, 16'hfa89, 16'hf79e, 16'hd946, 16'h982, 16'h2082, 16'h2082, 16'h725, 16'hd386, 16'he5c, 16'hf692, 16'hf692, 16'he5c, 16'hd386, 16'h725, 16'h2082, 16'h2082, 16'h982, 16'hb84, 16'hc659, 16'hb84, 16'h9d15, 16'h2082, 16'hffff, 
		16'hffff, 16'hffff, 16'h2082, 16'h2082, 16'h9d15, 16'hf79e, 16'hf79e, 16'hd946, 16'hd946, 16'h982, 16'h2082, 16'hc659, 16'h2082, 16'h2082, 16'h2082, 16'h2082, 16'h2082, 16'h2082, 16'hc659, 16'h2082, 16'h700, 16'hb84, 16'hd946, 16'hc659, 16'hc659, 16'h2082, 16'hffff, 16'hffff, 
		16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'h2082, 16'h2082, 16'hc659, 16'hf79e, 16'hd946, 16'hb84, 16'h2082, 16'h982, 16'hc659, 16'hf79e, 16'hf79e, 16'hf79e, 16'hf79e, 16'hc659, 16'h982, 16'h2082, 16'h700, 16'h982, 16'hc659, 16'h9d15, 16'h2082, 16'hffff, 16'hffff, 16'hffff, 
		16'hffff, 16'hffff, 16'hffff, 16'h2082, 16'ha2c5, 16'hd386, 16'h2082, 16'h2082, 16'h9d15, 16'h9d15, 16'h2082, 16'hd946, 16'h982, 16'h982, 16'h982, 16'h982, 16'h982, 16'h982, 16'hd946, 16'h2082, 16'h9d15, 16'hc659, 16'h2082, 16'h2082, 16'h725, 16'h2082, 16'hffff, 16'hffff, 
		16'hffff, 16'hffff, 16'hffff, 16'h2082, 16'hd946, 16'hfa89, 16'hd946, 16'hb84, 16'h2082, 16'h2082, 16'h2082, 16'h982, 16'hfa89, 16'hfa89, 16'h982, 16'h982, 16'hfa89, 16'hfa89, 16'h982, 16'h2082, 16'h2082, 16'h2082, 16'hb84, 16'hd386, 16'ha2c5, 16'h2082, 16'hffff, 16'hffff, 
		16'hffff, 16'hffff, 16'h2082, 16'hd386, 16'hf692, 16'hf692, 16'hf692, 16'hf692, 16'h982, 16'h700, 16'h2082, 16'h700, 16'h700, 16'h700, 16'h700, 16'h700, 16'h700, 16'h700, 16'h700, 16'h2082, 16'h700, 16'hb84, 16'hd386, 16'hd386, 16'hd386, 16'h2082, 16'hffff, 16'hffff, 
		16'hffff, 16'hffff, 16'h2082, 16'he5c, 16'hf692, 16'hf692, 16'hf692, 16'hf692, 16'he5c, 16'h2082, 16'h2082, 16'hb3c6, 16'hdc8b, 16'h8b2, 16'hf79e, 16'hf79e, 16'h8b2, 16'hdc8b, 16'hb3c6, 16'h2082, 16'h2082, 16'ha2c5, 16'h725, 16'hd386, 16'ha2c5, 16'h2082, 16'hffff, 16'hffff, 
		16'hffff, 16'hffff, 16'h2082, 16'hd386, 16'hf79e, 16'hf692, 16'hf79e, 16'ha2c5, 16'hf692, 16'h2082, 16'hc659, 16'h2082, 16'h2082, 16'hd946, 16'hd946, 16'hd946, 16'h2082, 16'h738f, 16'h2082, 16'hc659, 16'h982, 16'h2082, 16'h2082, 16'h2082, 16'h2082, 16'hffff, 16'hffff, 16'hffff, 
		16'hffff, 16'hffff, 16'hffff, 16'h2082, 16'hd386, 16'hf79e, 16'hf79e, 16'h725, 16'h2082, 16'hc659, 16'h2082, 16'h738f, 16'h2082, 16'hc659, 16'hd946, 16'hc659, 16'h2082, 16'hc659, 16'h2082, 16'hc659, 16'hd946, 16'h2082, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 
		16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'h2082, 16'h2082, 16'h2082, 16'h2082, 16'h2082, 16'hc659, 16'h2082, 16'h738f, 16'h2082, 16'hf79e, 16'hd946, 16'hf79e, 16'h2082, 16'hc659, 16'h738f, 16'h2082, 16'hc659, 16'h2082, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 
		16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'h2082, 16'h2082, 16'hd347, 16'hd347, 16'h2082, 16'hf79e, 16'h2082, 16'h738f, 16'h738f, 16'h738f, 16'h2082, 16'h9d15, 16'h2082, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 
		16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'h2082, 16'h700, 16'h700, 16'h700, 16'h2082, 16'hfc9, 16'hfc9, 16'hfc9, 16'hfc9, 16'h2082, 16'h2082, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 
		16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'h2082, 16'hd347, 16'hd347, 16'h825, 16'h2082, 16'h982, 16'h982, 16'h982, 16'h982, 16'h2082, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 
		16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'h2082, 16'h2082, 16'h2082, 16'h2082, 16'haa86, 16'hfc9, 16'hfc9, 16'hfc9, 16'h2082, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 
		16'hffff16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'h2082, 16'h825, 16'hd347, 16'hfc9, 16'hd347, 16'h2082, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 
};

	assign width  = 29;
	assign height = 32;

	assign color  = image[pixel];

endmodule
