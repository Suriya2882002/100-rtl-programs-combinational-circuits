module multiplier_4_x_4(product,inp1,inp2);

  output [7:0]product;
  input [3:0]inp1;
  input [3:0]inp2;
  
  assign product[0]=(inp1[0]&inp2[0]);
  
  wire x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17;
  
  half_adder HA1(product[1],x1,(inp1[1]&inp2[0]),(inp1[0]&inp2[1]));
  full_adder FA1(x2,x3,inp1[1]&inp2[1],(inp1[0]&inp2[2]),x1);
  full_adder FA2(x4,x5,(inp1[1]&inp2[2]),(inp1[0]&inp2[3]),x3);
  half_adder HA2(x6,x7,(inp1[1]&inp2[3]),x5);
  
  half_adder HA3(product[2],x15,x2,(inp1[2]&inp2[0]));
  full_adder  FA5(x14,x16,x4,(inp1[2]&inp2[1]),x15);
  full_adder  FA4(x13,x17,x6,(inp1[2]&inp2[2]),x16);
  half_adder FA3(x9,x8,x7,(inp1[2]&inp2[3]),x17);
  
  half_adder HA4(product[3],x12,x14,(inp1[3]&inp2[0]));
  full_adder  FA8(product[4],x11,x13,(inp1[3]&inp2[1]),x12);
  hlaf_adder FA7(product[5],x10,x9,(inp1[3]&inp2[2]),x11);
  half_adder FA6(product[6],product[7],x8,(inp1[3]&inp2[3]),x10);
  
endmodule
