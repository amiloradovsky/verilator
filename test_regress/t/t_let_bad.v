// DESCRIPTION: Verilator: Verilog Test module
//
// This file ONLY is placed under the Creative Commons Public Domain, for
// any use, without warranty, 2023 by Wilson Snyder.
// SPDX-License-Identifier: CC0-1.0

module t(/*AUTOARG*/);

   let NO_ARG = 10;
   let ONE_ARG(a) = 10;

   initial begin
      if (NO_ARG(10) != 10) $stop;  // BAD
      if (ONE_ARG() != 10) $stop;  // BAD
      if (ONE_ARG(10, 20) != 10) $stop;  // BAD
      $write("*-* All Finished *-*\n");
      $finish;
   end

endmodule
