module gt 
  (
  input wire [1:0] a, b,
  output wire agtb
  );

  wire p1, p2, p3;

  assign p1 = a[0] & ~b[0];
  assign p2 = a[1] & ~b[1];
  assign p3 = ~(a[1] ^ b[1]);

  assign agtb = p2 | (p3 & p1);

endmodule

