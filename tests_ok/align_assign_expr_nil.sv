module asdf (
             input logic [3:0]  i
             output logic       o1,
             output logic [3:0] o2,
             output logic [3:0] o3
             );
   
   parameter         WIDTH = 4;
   
   logic [WIDTH-1:0] temp1 = 4'h0;
   logic             temp2 = 1'b0;
   logic signed      temp3 = '0;
   
   assign o1 = &i;
   assign o2[1:0] = i[1:0];
   assign o2[WIDTH-1:2] = i[3:0];
   assign o3[0] = i;
   assign o3[1] = i;
   assign o3[3:2] = {i, i};
   
endmodule // asdf

// Local Variables:
// verilog-align-assign-expr: nil
// End:
