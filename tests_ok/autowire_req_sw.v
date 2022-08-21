`include "pf_sc.vh"

module autowire_req_sw
  (
   input reqcmd_t  AReq,
   output reqcmd_t BReq
   /*AUTOINPUT*/
   );
   
   assign Bnk0Req =  Cpu0Req;
   
   
endmodule


// Local Variables:
// verilog-library-directories:(".")
// verilog-typedef-regexp:"_t$"
// eval: (setq verilog-align-typedef-regexp (concat "\\<" verilog-identifier-re "_t\\>"))
// End:
