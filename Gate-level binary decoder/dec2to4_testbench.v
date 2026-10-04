`timescale 1ns / 10ps

module dec2to4_testbench ();

  reg [1:0] testin_0;
  reg en;
  wire [3:0] decoded;
  integer i;

  dec2to4 uut (
      .a(testin_0),
      .en(en),
      .decoded(decoded)
  );

  initial begin
    $dumpfile("dec2to4.vcd");
    $dumpvars(0, dec2to4_testbench);

    for (i = 0; i < 8; i = i + 1) begin
      en = i[0];
      testin_0 = i[2:1];  // take only last 2 bits of int i
      #200;

      if (decoded !== (en ? (4'b0001 << testin_0) : 4'b0000))  // selftest
        $display("FAIL: en=%b a=%b decoded=%b", en, testin_0, decoded);

    end

    $finish;
  end
endmodule
