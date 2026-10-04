module dec3to8 (
    input wire [2:0] a,
    input wire en,
    output wire [7:0] decoded
);

  wire en_lo, en_hi;

  assign en_lo = en & ~a[2];
  assign en_hi = en & a[2];

  dec2to4 dec_lo (
      .a(a[1:0]),
      .en(en_lo),
      .decoded(decoded[3:0])
  );

  dec2to4 dec_hi (
      .a(a[1:0]),
      .en(en_hi),
      .decoded(decoded[7:4])
  );

endmodule
