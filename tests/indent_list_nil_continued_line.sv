// Bug 1495

module x;
initial begin
startc_c         <= (valid && (state == THE_START));
end_c            <= (valid && (state == THE_END));
valid_c          <= (valid &&
(state != IDLE) &&
(state != SKIP_DATA));
end // initial begin
endmodule : x


module asdf;

initial begin
variable[i].value[0] = {signal3, signal2,
signal1, signal0};
end

endmodule: asdf



// Local Variables:
// verilog-indent-lists: nil
// End:
