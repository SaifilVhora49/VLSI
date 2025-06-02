module cmos_xor(in1,in2,out);
	input in1,in2;
	output out;
	wire a,b,c,d;
	supply1 vdd;
	supply0 gnd;
	
	nmos n1(out,a,in1);
	nmos n2(a,gnd,in2);
	nmos n3(out,b,~in1);
	nmos n4(b,gnd,~in2);

	pmos p1(c,vdd,in1);
	pmos p2(out,c,~in2);
	pmos p3(d,vdd,~in1);
	pmos p4(out,d,in2);
endmodule
	
