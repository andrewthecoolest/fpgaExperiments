`timescale 1ns / 10ps

module dec3to8_testbench ();

  reg [2:0] testin;
  reg en;
  wire [7:0] testout;

  integer i;

  dec3to8 uut (
      .a(testin),
      .en(en),
      .decoded(testout)
  );

  initial begin
    $dumpfile("dec3to8.vcd");
    $dumpvars(0, dec3to8_testbench);

    for (i = 0; i < 16; i = i + 1) begin
      testin = i[3:1];
      en = i[0];
      #200;

      if (testout !== (en ? (8'b00000001 << testin) : 8'b00000000))  // selftest
        $display("FAIL: en=%b a=%b decoded=%b", en, testin, testout);
    end

    $finish;
  end

endmodule
