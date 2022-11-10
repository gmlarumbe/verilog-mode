class foo;

int member;

function void foo2 (input asdf);
`uvm_info(get_name(), $sformatf("Here there is a long line with a variable to be printed, member=%0d",
member), UVM_MEDIUM)
endfunction

endclass

