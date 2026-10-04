module dec2to4 (
    input wire [1:0] a,
    input wire en,
    output wire [3:0] decoded
);

  wire p0, p1, p2, p3;

  assign p0 = ~a[0] & ~a[1] & en;
  assign p1 = a[0] & ~a[1] & en;
  assign p2 = ~a[0] & a[1] & en;
  assign p3 = a[0] & a[1] & en;

  assign decoded[3] = p3;
  assign decoded[2] = p2;
  assign decoded[1] = p1;
  assign decoded[0] = p0;

endmodule
