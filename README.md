# fpgaExperiments

I'm going through "FPGA prototyping by Verilog examples" by Pong P. Chu

These are the FPGA experiments of the book in Verilog, built and run on a Digilent Basys3 (Artix-7).

| Directory | What it does |
|---|---|
| [Gate-level greater-than circuit](Gate-level%20greater-than%20circuit/) | 2-bit and 4-bit greater-than comparators and a 2-bit equality comparator built from gates, with self-checking testbenches |
| [Gate-level binary decoder](Gate-level%20binary%20decoder/) | 2-to-4 decoder built from gates with an `en` input, chained into 3-to-8 and 4-to-16 decoders (decoder tree); self-checking testbenches |
