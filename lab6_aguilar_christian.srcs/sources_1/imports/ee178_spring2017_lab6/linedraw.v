// File: linedraw.v
// This is the linedraw design for EE178 Lab #6.

// The `timescale directive specifies what the
// simulation time units are (1 ns here) and what
// the simulator time step should be (1 ps here).

`timescale 1 ns / 1 ps

// Declare the module and its ports. This is
// using Verilog-2001 syntax.

module linedraw (
  input wire go,
  output wire busy,
  input wire [7:0] stax,
  input wire [7:0] stay,
  input wire [7:0] endx,
  input wire [7:0] endy,
  output wire wr,
  output wire [15:0] addr,
  input wire pclk
  );

  // Describe the actual linedraw for the assignment.
  // Please refer to the provided reference materials
  // or research line drawing algorithms.  The default
  // logic provided here will allow you to initially
  // draw pixels to test integration of your video
  // timing controller and the simulation environment.

  assign busy = go;
  assign wr = go;
  assign addr = {stay,stax};

endmodule
