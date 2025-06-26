`timescale 1ns / 1ps

module testbench();
  

 /////global signals
  
  reg clk;
  reg reset;
  
  reg [3:0] temp;
  
  initial begin
    clk = 1'b0;//single bit binary zero
    reset = 1'b0;
  
  end
 
  initial begin
    reset = 1'b1;
    #30;
    reset = 1'b0;
  end
  
  initial begin
    temp = 4'b0100; // 4 bits of temp in binary
    #10;
    temp = 4'b1100;
    #10;
    temp = 4'b0011;
    #10;
  end
  
  
  initial begin
  	$dumpfile("dump.vcd");
  	$dumpvars;
  end
  
  initial begin
    $monitor("Temp : %0d at time : %0t",temp, $time);
  end
  
  initial begin
    #200;
    $finish();
    
  end
  
  
endmodule
  
