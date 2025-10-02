`timescale 1ns / 1ps
primitive and_udp(y,a,b);
input a,b;
output y;
table
// a b : y
   0 0 : 0;
   0 1 : 0;
   1 0 : 0;
   1 1 : 1;
endtable
endprimitive

primitive or_udp(y,a,b);
input a,b;
output y;
table
//  a b : y
    0 0 : 0;
    0 1 : 1;
    1 0 : 1;
    1 1 : 1;
endtable
endprimitive

primitive nand_udp (y,a,b);
input a,b;
output y; 
table 
//  a b : y
    0 0 : 1;
    0 1 : 1;
    1 0 : 1;
    1 1 : 0;
endtable
endprimitive

primitive nor_udp (y,a,b);
input a, b; 
output y; 
table 
//  a b : y
    0 0 : 1;
    0 1 : 0;
    1 0 : 0;
    1 1 : 0;
endtable
endprimitive

primitive not_udp (y,a);
input a;
output y;
table 
// a : y
   0 : 1;
   1 : 0;
endtable
endprimitive

primitive xor_udp (y,a,b);
input a,b;
output y;
table
//  a b : y
    0 0 : 0;
    0 1 : 1;
    1 0 : 1;
    1 1 : 0;
 endtable
endprimitive

primitive xnor_udp (y,a,b);
input a,b;
output y;
table
//  a b : y
    0 0 : 1;
    0 1 : 0;
    1 0 : 0;
    1 1 : 1;
 endtable
endprimitive