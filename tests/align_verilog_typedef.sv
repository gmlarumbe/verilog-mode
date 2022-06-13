class test;
   typedef class example_t;

   // Breaks with (verilog-pretty-declarations)

   virtual function void cmp_core
     (
      input bit [8:0]   max_len,
      input bit         mv,
                        mv2, mv3,
                        mv3,
      ref example_t algo_cfg,
      ref bit [17:0]    orig_img [],
      ref bit [15:0]    cmp_img [],
      example_t         algo_cfg,
      example_e         asdf,
      example_if        asdf_if,
      example_vif       asdf_if,
      input bit         recmp_en = 1'b0,
      output bit [17:0] re_pixel_output_tmp
      );

   endfunction
endclass

// Local Variables:
// verilog-typedef-regexp:"_\\(t\\|e\\|if\\|vif\\)$"
// End:
