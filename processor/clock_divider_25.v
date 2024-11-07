module clock_divider_25 (
	input clock,
	output reg clock25
);

//clock divider
always @ (posedge clock) 
begin
	if(clock == 1'b1)
		clock25 <= !clock25;
end

endmodule