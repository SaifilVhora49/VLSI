module cmos_and(in1,in2,out);
	input in1,in2;
	output out;
	wire temp,w;
	supply1 vdd;
	supply0 gnd;

	nmos n1(temp,w,in1);
	nmos n2(w,gnd,in2);
	pmos p1(temp,vdd,in1);
	pmos p2(temp,vdd,in2);

	nmos n3(out,gnd,temp);
	pmos p3(out,vdd,temp);
endmodule
	
