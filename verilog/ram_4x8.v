//--------------------------------------------
// ram_4x8
// data = 4-bit
// address = 3-bit, total addresses = 2^n = 2^3 = 8
//--------------------------------------------

module ram_4x8 (
clk     , // clock
addr    , // address
data_in , // data input
data_out, // data output
rw        // read write
);

input            clk     ;
input      [2:0] addr    ; // 3-bit addresses
input      [3:0] data_in ; // 4-bit input data
output reg [3:0] data_out; // 4-bit output data
input            rw      ; // read write

reg [3:0] ram [7:0]; // ram_4x8; reg [each-data-bit] mem [total-addresses-bit]

// WRITE; rw = 0
// READ;  rw = 1
always @ (posedge clk) begin
   if ( !rw ) begin
       ram[addr] <= data_in;
       data_out = 4'b0;
   end else begin
       data_out <= ram[addr];
   end
end

endmodule
