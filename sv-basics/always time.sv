`timescale 1ns /1ps

module testbench();
 
  reg clk;
  reg rst;
  
  reg clk50 = 0;
  
  reg clk25 = 0;
  
  initial begin
    clk = 1'b0;
    rst = 1'b0;
  end
  
  //always #5 clk = ~clk; //clk operating at 100mhz
  
 // always #10 clk50 = ~clk50; //50mhz
  
  //always #20 clk25 = ~clk25; //25mhz
  
  
  always #5 clk = ~clk;
  
  always begin
    #5;
    clk50 = 1;
    #10;
    clk50 = 0;
    #5;
  end
  
  always begin
    #5;
    clk25 = 1;
    #5;
    clk25 = 0;
  end
  
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end

 initial begin
   #200;
   $finish();
 end
  
endmodule
