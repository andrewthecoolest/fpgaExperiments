`timescale 1ns / 10ps

module eq_testbench;
  reg [1:0] test_in0, test_in1;
  wire test_out;

  eq uut (
      .a(test_in0),
      .b(test_in1),
      .aeqb(test_out)
  );

  initial begin
    $dumpfile("eq.vcd");
    $dumpvars(0, eq_testbench);

    test_in0 = 2'b00;
    test_in1 = 2'b00;
    #200;

    test_in0 = 2'b00;
    test_in1 = 2'b01;
    #200;

    test_in0 = 2'b00;
    test_in1 = 2'b10;
    #200;

    test_in0 = 2'b00;
    test_in1 = 2'b11;
    #200;

    test_in0 = 2'b01;
    test_in1 = 2'b00;
    #200;

    test_in0 = 2'b01;
    test_in1 = 2'b01;
    #200;

    test_in0 = 2'b01;
    test_in1 = 2'b10;
    #200;

    test_in0 = 2'b01;
    test_in1 = 2'b11;
    #200;

    test_in0 = 2'b10;
    test_in1 = 2'b00;
    #200;

    test_in0 = 2'b10;
    test_in1 = 2'b01;
    #200;

    test_in0 = 2'b10;
    test_in1 = 2'b10;
    #200;

    test_in0 = 2'b10;
    test_in1 = 2'b11;
    #200;

    test_in0 = 2'b11;
    test_in1 = 2'b00;
    #200;

    test_in0 = 2'b11;
    test_in1 = 2'b01;
    #200;

    test_in0 = 2'b11;
    test_in1 = 2'b10;
    #200;

    test_in0 = 2'b11;
    test_in1 = 2'b11;
    #200;

    $finish;
  end
endmodule
