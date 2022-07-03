// Bug 1495

module x;
initial begin
startc_c         <= (valid && (state == THE_START));
end_c            <= (valid && (state == THE_END));
valid_c          <= (valid &&
(state != IDLE) &&
(state != SKIP_DATA));
end // initial begin
endmodule // x


// Local Variables:
// verilog-indent-lists: nil
// End:
