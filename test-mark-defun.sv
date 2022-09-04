interface asdf;

    function void connect_phase(uvm_phase phase);
        // some code
    endfunction

endinterface;


package asdf;

    class class1 extends some_class;
        `uvm_component_utils(class1)

        // Some fields

        function new(string name = "class1", uvm_component parent = null);
            super.new(name, parent);
        endfunction

        function void end_of_elaboration_phase(uvm_phase phase);
            // some code
        endfunction

        function void build_phase(uvm_phase phase);
            super.build_phase(phase);
            // Some code
        endfunction

        function void connect_phase(uvm_phase phase);
            // Some code
        endfunction

        virtual function void report_phase(uvm_phase phase);
            // Some code
        endfunction

        virtual task run_phase(uvm_phase phase);
            // Some code
        endtask

    endclass


    class class2 extends some_class;
        `uvm_component_utils(class1)

        // Some fields

        function new(string name = "class1", uvm_component parent = null);
            super.new(name, parent);
        endfunction

        function void end_of_elaboration_phase(uvm_phase phase);
            // some code
        endfunction

        virtual function void report_phase(uvm_phase phase);
            // Some code
        endfunction

        virtual task run_phase(uvm_phase phase);
            // Some code
        endtask

    endclass

endpackage; // asdf



module asdf;

    alu_agent alu_if_agent;  // alu agent
    scoreboard_ooo_imps sb;  // analysis group

    UVM_FILE log_file_id;

    always_ff @ (clk) begin
        a <= b;
    end

    always_ff @ (clk)
        a <= b;

    always_ff @ (clk) begin
        if (rst) begin
            a <= 0;
        end
        else begin
            a <= 1;
        end
    end

    always_ff @ (clk) begin
        if (rst)
            a <= 0;
        else
            a <= 1;
    end

    always_ff @ (clk) begin

        if (rst) begin

            a <= 0;

        end

        else begin

            a <= 1;

        end

    end

    initial begin
        a = 1;
    end

    initial
        a = 1;


    function new( string name = "alu_env", uvm_component parent = null);
        super.new(name, parent);
    endfunction


    function void end_of_elaboration_phase(uvm_phase phase);
        log_file_id = $fopen("log_file.log");
        set_report_default_file_hier(log_file_id);
        set_report_severity_action_hier(UVM_WARNING, UVM_DISPLAY | UVM_LOG);
        set_report_severity_action_hier(UVM_INFO, UVM_DISPLAY | UVM_LOG);
        set_report_severity_action_hier(UVM_ERROR, UVM_DISPLAY | UVM_COUNT | UVM_LOG);
        set_report_severity_action_hier(UVM_FATAL, UVM_DISPLAY | UVM_LOG | UVM_EXIT);
    endfunction

    virtual function void report_phase(uvm_phase phase);     // report
        `uvm_info("alu_env" , "Finished Test \n", UVM_LOW)
    endfunction

endmodule;
