module half_adder_df (A,B,S,C);
input A,B;
output S,C;

// dataflow 
assign S = A^B;
assign C = A&B;

endmodule
