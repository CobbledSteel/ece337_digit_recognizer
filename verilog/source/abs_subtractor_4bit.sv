// $Id: $
// File name:   abs_subtractor_4bit.sv
// Created:     4/20/2018
// Author:      David Pimley
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: Takes the magnitude of the difference of two input signals

module abs_subtractor_4bit
(
	input wire [3:0] a,
	input wire [3:0] b,
	output wire [3:0] mag_diff
);

reg gt;
reg lt;
reg eq;
reg [3:0] mag;

comparator MAG_COMPARATOR (.a(a), .b(b), .gt(gt), .lt(lt), .eq(eq));

always_comb begin: CHOOSE_MAX
	if (gt | eq) begin
		mag = $unsigned(a) - $unsigned(b);
	end else begin
		mag = $unsigned(b) - $unsigned(a);
	end
end

assign mag_diff = mag;

endmodule