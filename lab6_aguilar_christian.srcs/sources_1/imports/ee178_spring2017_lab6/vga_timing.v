// File: vga_timing.v
// This is the vga timing design for EE178 Lab #6.

// The `timescale directive specifies what the
// simulation time units are (1 ns here) and what
// the simulator time step should be (1 ps here).

`timescale 1 ns / 1 ps

// Declare the module and its ports. This is
// using Verilog-2001 syntax.

module vga_timing (
  output wire [10:0] vcount,
  output wire vsync,
  output wire vblnk,
  output wire [10:0] hcount,
  output wire hsync,
  output wire hblnk,
  input wire pclk
  );

  // Describe the actual circuit for the assignment.
  // Video timing controller set for 800x600@60fps
  // using a 40 MHz pixel clock per VESA spec.
    //shift horizontally
reg [10:0] hPixles = 0;
reg [10:0] vPixles = 0;
wire htc;
wire vtc;
      
always @ (posedge pclk)
begin
if(htc) 
    hPixles <= 0;
else 
    hPixles <= hPixles + 1;
end
assign hcount = hPixles;
assign htc = (hPixles == 1055);
assign hblnk = (hPixles >= 800); //turn off Cathod-Ray
assign hsync = ((hPixles > 840) & (hPixles < 969));    //Set V-Sync

//shift vertically
always @ (posedge pclk)
begin
  if(htc) begin
    if(vtc)
        vPixles <= 0;
    else 
        vPixles <= vPixles + 1;
    end
end
assign vcount = vPixles;
assign vtc = (vPixles == 627);
assign vblnk = (vPixles >= 600);
assign vsync = ((vPixles > 601) & (vPixles < 606));    //Set H-Sync

endmodule
