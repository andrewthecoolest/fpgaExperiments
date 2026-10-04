module gt4bit (
    input wire [3:0] a,
    b,
    output wire agtb
);

  wire p0, p1, p2, p3;

  eq eq_hi (
      .a(a[3:2]),
      .b(b[3:2]),
      .aeqb(p0)
  );

  gt gt_low (
      .a(a[1:0]),
      .b(b[1:0]),
      .agtb(p1)
  );

  assign p2 = p0 & p1;

  gt gt_hi (
      .a(a[3:2]),
      .b(b[3:2]),
      .agtb(p3)
  );

  assign agtb = p2 | p3;

endmodule
