//--------------------------------------------
// ram_4x8
// data = 4-bit
// address = 3-bit, total addresses = 2^n = 2^3 = 8
//--------------------------------------------

module ram_4x8 (
clk     , // clock
rw      , // read write
addr    , // address
data_in , // data input
data_out, // data output
);

input            clk     ;
input            rw      ; // read write
input      [2:0] addr    ; // 3-bit addresses
input      [3:0] data_in ; // 4-bit input data
output reg [3:0] data_out; // 4-bit output data

reg [3:0] ram [7:0]; // 4 by 8 ram; reg [each-data-bit] mem [total-addresses-bit]

// WRITE; rw = 0
// READ;  rw = 1
always @ (posedge clk) begin
   if ( !rw ) begin
       ram[addr] <= data_in; // write
   end else begin
       data_out <= ram[addr]; // read
   end
end

endmodule
