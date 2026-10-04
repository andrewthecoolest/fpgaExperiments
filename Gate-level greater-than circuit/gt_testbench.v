`timescale 1ns/10ps

module gt_testbench;

  reg [1:0] test_in0, test_in1;
  wire test_out;

  gt uut (.a(test_in0), .b(test_in1), .agtb(test_out));

  initial
  begin
    test_in0 = 2'b00;
    test_in1 = 2'b00;
    # 200;

    test_in0 = 2'b01;
    test_in1 = 2'b00;
    # 200;

    test_in0 = 2'b10;
    test_in1 = 2'b00;
    # 200;

    test_in0 = 2'b11;
    test_in1 = 2'b00;
    # 200;

    test_in0 = 2'b00;
    test_in1 = 2'b01;
    # 200;

    test_in0 = 2'b01;
    test_in1 = 2'b01;
    # 200;

    test_in0 = 2'b10;
    test_in1 = 2'b01;
    # 200;

    test_in0 = 2'b11;
    test_in1 = 2'b01;
    # 200;

    test_in0 = 2'b00;
    test_in1 = 2'b10;
    # 200;

    test_in0 = 2'b01;
    test_in1 = 2'b10;
    # 200;

    test_in0 = 2'b10;
    test_in1 = 2'b10;
    # 200;

    test_in0 = 2'b11;
    test_in1 = 2'b10;
    # 200;

    test_in0 = 2'b00;
    test_in1 = 2'b11;
    # 200;

    test_in0 = 2'b01;
    test_in1 = 2'b11;
    # 200;

    test_in0 = 2'b10;
    test_in1 = 2'b11;
    # 200;

    test_in0 = 2'b11;
    test_in1 = 2'b11;
    # 200;

    $stop;
  end
endmodule

