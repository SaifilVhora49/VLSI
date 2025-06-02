module inverter(in,out);
	input in;
	output out;
	
	supply1 vdd;
	supply0 gnd;
	
	nmos n1(out,gnd,in);
	pmos p1(out,vdd,in);
endmodule
