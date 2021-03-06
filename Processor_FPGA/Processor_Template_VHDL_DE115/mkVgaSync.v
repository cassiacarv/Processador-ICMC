//
// Generated by Bluespec Compiler, version 2012.01.A (build 26572, 2012-01-17)
//
// On Fri Feb 24 16:34:56 BRST 2012
//
// Method conflict info:
// Method: pixelect
// Conflict-free: pixelect, hsync, vsync, video_en, stack_en
//
// Method: hsync
// Conflict-free: pixelect, hsync, vsync, video_en, stack_en
//
// Method: vsync
// Conflict-free: pixelect, hsync, vsync, video_en, stack_en
//
// Method: video_en
// Conflict-free: pixelect, hsync, vsync, video_en, stack_en
//
// Method: stack_en
// Conflict-free: pixelect, hsync, vsync, video_en, stack_en
//
//
// Ports:
// Name                         I/O  size props
// pixelect                       O    17 const
// RDY_pixelect                   O     1 const
// hsync                          O     1 const
// RDY_hsync                      O     1 const
// vsync                          O     1 const
// RDY_vsync                      O     1 const
// video_en                       O     1 const
// RDY_video_en                   O     1 const
// stack_en                       O     1 const
// RDY_stack_en                   O     1 const
// CLK                            I     1 unused
// RST_N                          I     1 unused
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
`define BSV_ASSIGNMENT_DELAY
`endif

module mkVgaSync(CLK,
		 RST_N,

		 pixelect,
		 RDY_pixelect,

		 hsync,
		 RDY_hsync,

		 vsync,
		 RDY_vsync,

		 video_en,
		 RDY_video_en,

		 stack_en,
		 RDY_stack_en);
  input  CLK;
  input  RST_N;

  // value method pixelect
  output [16 : 0] pixelect;
  output RDY_pixelect;

  // value method hsync
  output hsync;
  output RDY_hsync;

  // value method vsync
  output vsync;
  output RDY_vsync;

  // value method video_en
  output video_en;
  output RDY_video_en;

  // value method stack_en
  output stack_en;
  output RDY_stack_en;

  // signals for module outputs
  wire [16 : 0] pixelect;
  wire RDY_hsync,
       RDY_pixelect,
       RDY_stack_en,
       RDY_video_en,
       RDY_vsync,
       hsync,
       stack_en,
       video_en,
       vsync;

  // value method pixelect
  assign pixelect = 17'd12 ;
  assign RDY_pixelect = 1'd1 ;

  // value method hsync
  assign hsync = 1'd1 ;
  assign RDY_hsync = 1'd1 ;

  // value method vsync
  assign vsync = 1'd1 ;
  assign RDY_vsync = 1'd1 ;

  // value method video_en
  assign video_en = 1'd1 ;
  assign RDY_video_en = 1'd1 ;

  // value method stack_en
  assign stack_en = 1'd1 ;
  assign RDY_stack_en = 1'd1 ;
endmodule  // mkVgaSync

