//-----------------------------------------------------
// ram_4x8
// 4 = 4 bit data
// 8 = total no of addresses; 2^3 = 8, address = 3 bit
//-----------------------------------------------------
module ram_4x8 (
clk     , // clock
addr    , // address
data_in , // data input
data_out, // data output
cs      , // chip select
we        // write enable/ read enable
); 

parameter DATA_WIDTH = 4;
parameter ADDR_WIDTH = 3;
parameter RAM_DEPTH = 8 ;

input                   clk     ;
input  [ADDR_WIDTH-1:0] addr    ;
input  [DATA_WIDTH-1:0] data_in ;
output [DATA_WIDTH-1:0] data_out;
input                   cs      ;
input                   we      ;

reg [DATA_WIDTH-1:0] ram [0:RAM_DEPTH-1]; // ram 4x8
reg [ADDR_WIDTH-1:0] addr_reg; // address register

//--------------Code Starts Here------------------ 
// WRITE; we = 1, cs = 1
// READ;  we = 0, cs = 1
always @ (posedge clk) begin
   if ( we ) begin
       ram[addr] <= data_in;
   end else begin
       addr_reg = addr;
   end
end

assign data_out = ram[addr_reg];

endmodule