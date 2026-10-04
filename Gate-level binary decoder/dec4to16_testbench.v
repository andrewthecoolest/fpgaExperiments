`timescale 1ns / 10ps

module dec4to16_testbench ();

  reg [3:0] testin;
  reg en;
  wire [15:0] testout;
  integer i;

  dec4to16 uut (
      .a(testin),
      .en(en),
      .decoded(testout)
  );

  initial begin
    $dumpfile("dec4to16.vcd");
    $dumpvars(0, dec4to16_testbench);

    for (i = 0; i < 32; i = i + 1) begin

      testin = i[4:1];
      en = i[0];
      #200;

      if (testout !== (en ? (16'b0000000000000001 << testin) : 16'b0000000000000000))
        $display("FAIL: en=%b, a=%b, decoded=%b", en, testin, testout);

    end

    $finish;
  end

endmodule
