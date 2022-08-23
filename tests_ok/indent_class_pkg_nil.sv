package foo;
   
   typedef logic [7:0]     byte_t;
   localparam byte_t       ALL_ONES  = 8'hFF;
   localparam byte_t [3:0] ALL_ZEROS = 32'h0;
   
   function foo3 (input int a);
      $display(a);
   endfunction
   
class A;
   byte_t foo2 = ALL_ONES;
endclass
   
endpackage

// Local Variables:
// verilog-indent-class-inside-pkg: nil
// eval: (setq verilog-typedef-regexp (concat "\\<" verilog-identifier-re "_t\\>"))
// End:
