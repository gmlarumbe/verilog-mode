module param_port_list # (parameter integer PARAMETER_1 = 1, // Some comment
                                                          parameter integer p_mem_addr_wd        = 12,
                                                          parameter integer p_spi_counter_bits   = 6,
                                                          parameter integer p_mem_wd             = 72,
                                                          parameter integer p_nbr_uram           = 2,
                                                          parameter integer p_addr_wd            = 10,
                                                          parameter integer p_data_wd            = 48,
                                                          parameter integer p_num_serial         = 2,
                                                          parameter integer p_num_parallell      = 4,
                                                          parameter integer p_bits_num_ic        = 3,
                                                          parameter integer p_bits_num_quadrants = 2,
                                                          parameter integer p_bits_num_spi_if    = 3,
                                                          parameter integer p_bits_num_trigger   = 4,
                                                          parameter integer p_bits_num_csb       = 2,
                                                          parameter integer p_num_pipe           = 1)

   (
    input logic                                  clk,
    input logic                                  rst_n,
    input logic                                  i_start_tap_mem,          // Start tap mem if in correct trigger mode
    input logic [p_bits_num_spi_if-1:0]          i_select_quadrant_spi,
    input logic [p_bits_num_trigger-1:0]         i_trigger_mode,
    input logic                                  i_data_request,
    input logic [p_mem_addr_wd-1 :0]             i_addr_tap_mem,
    input logic [p_addr_wd-1 :0]                 i_trigger_data,
    output logic[(p_nbr_uram*p_mem_wd)-1 :0]     o_data_tap_mem,
    output logic                                 o_data_tap_mem_valid,
    output logic                                 o_data_tap_mem_busy,
    input logic                                  i_spi_sdo[p_bits_num_quadrants-1:0][p_bits_num_spi_if-1:0],                                // Serial data read back
    input logic [1:0]                            i_spi_csb[p_bits_num_quadrants-1:0][p_bits_num_spi_if-1:0],                                // Chip select
    input logic                                  i_spi_pdi[p_bits_num_quadrants-1:0][p_bits_num_spi_if-1:0],                                // Broacast data
    input logic                                  i_spi_sdi[p_bits_num_quadrants-1:0][p_bits_num_spi_if-1:0],                                // Serial data
    input logic [3:0]                            i_tdd_sf_number,          // Subframe number 0-9
    input logic [4:0]                            i_tdd_sl_number,          // Slot number 0-31
    input logic [5:0]                            i_tdd_sym_number,         // Symbol number. Max. 56 symbols per slot
    input logic [2:0]                            i_bi_stype,               // Symbol type: 000=DL, 001=S, 010=UL, 011=ULS, 101=G
    input logic [16:0]                           i_tdd_sym_length          // Symbol length

    );
   typedef struct                             packed{
      logic                                    spi_sdo;                // Serial data read back
      logic [1 :0]                             spi_csb;                // Chip select
      logic                                    spi_pdi;                // Broacast data
      logic                                    spi_sdi;                // Serial data
   } spi_if;

endmodule

// Local Variables:
// verilog-indent-lists: nil
// End:
