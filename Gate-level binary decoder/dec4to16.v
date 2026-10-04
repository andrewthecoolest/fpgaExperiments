// 5x 2to4 decs
// 20 nots, 40 ands

module dec4to16 (
    input wire [3:0] a,
    input wire en,
    output wire [15:0] decoded
);

  // words here mean which group of 4 bits
  wire [3:0] en_word;

  dec2to4 dec_en (
      .a(a[3:2]),
      .en(en),
      .decoded(en_word)
  );

  dec2to4 dec_word0 (
      .a(a[1:0]),
      .en(en_word[0]),
      .decoded(decoded[3:0])
  );

  dec2to4 dec_word1 (
      .a(a[1:0]),
      .en(en_word[1]),
      .decoded(decoded[7:4])
  );

  dec2to4 dec_word2 (
      .a(a[1:0]),
      .en(en_word[2]),
      .decoded(decoded[11:8])
  );

  dec2to4 dec_word3 (
      .a(a[1:0]),
      .en(en_word[3]),
      .decoded(decoded[15:12])
  );

endmodule
