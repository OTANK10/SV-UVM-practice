`timescale 1ns /1ps

module testbench();
  
//globals
  
  reg clk;
  reg resetn;
  
  reg [3:0] temp;
  
  
  //initalizing globals
  
  initial begin
    clk =1'b0;
    resetn =1'b0;
  end
  
  //random signal for data/control
  
  initial begin
    resetn = 1'b0;
    #60
    resetn = 1'b1;
  end
  
  
  
  initial begin
    temp = 4'b0100;
    #10;
    temp = 4'b0111;
    #15;
    temp = 4'b0110;
    #5;
  end
  initial begin
    
    $dumpfile("dumpfile.vcd");
    $dumpvars;
    #150
    $finish();
  end
  
  initial begin
    $monitor("Temp: %0d at time %0t.", temp. $time);
  
endmodule
