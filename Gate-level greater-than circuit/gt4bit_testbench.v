`timescale 1ns / 10ps

module gt4bit_testbench ();
  reg [3:0] test_in0, test_in1;
  wire test_out;

  integer i, j;  // integers for looping

  gt4bit uut (
      .a(test_in0),
      .b(test_in1),
      .agtb(test_out)
  );

  initial begin
    $dumpfile("gt4bit.vcd");
    $dumpvars(0, gt4bit_testbench);

    for (i = 0; i < 16; i = i + 1)
    for (j = 0; j < 16; j = j + 1) begin

      // only take last 4 bits; integer is 32 bits and test_in0 is 4 bits
      test_in0 = i[3:0];
      test_in1 = j[3:0];
      #200;

      // test if correct or no
      if (test_out !== (test_in0 > test_in1))
        $display("FAIL: %d > %d gave %b", test_in0, test_in1, test_out);

    end

    $finish;
  end

endmodule
