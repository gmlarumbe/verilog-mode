module foo (
            input logic  in,
            output logic out,
            custom_t     my_type,
            other_t      other_type,
            custom_if    my_if
            );
   
   logic     sig1;
   logic     sig2;
   custom_t  my_type1;
   other_t   other_type1;
   custom_if my_if1;
   
endmodule

// Local Variables:
// verilog-typedef-regexp: "_\\(t\\|e\\|s\\|if\\|vif\\)$"
// End:
