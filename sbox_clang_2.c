/* This code was generated by Usuba.
   See https://github.com/DadaIsCrazy/usuba.
   From the file "samples/usuba/subbytes_aes_kasper.ua" (included below). */

#include <stdint.h>

/* Do NOT change the order of those define/include */
#define NO_RUNTIME
#ifndef BITS_PER_REG
#define BITS_PER_REG 256
#endif
/* including the architecture specific .h */
#include "AVX.h"

/* auxiliary functions */
void SubBytes_single__V16 (/*inputs*/ DATATYPE U0,DATATYPE U1,DATATYPE U2,DATATYPE U3,DATATYPE U4,DATATYPE U5,DATATYPE U6,DATATYPE U7, /*outputs*/ DATATYPE* S0,DATATYPE* S1,DATATYPE* S2,DATATYPE* S3,DATATYPE* S4,DATATYPE* S5,DATATYPE* S6,DATATYPE* S7) {
  
  // Variables declaration
  DATATYPE _tmp1_;
  DATATYPE _tmp2_;
  DATATYPE _tmp3_;
  DATATYPE _tmp4_;
  DATATYPE t0;
  DATATYPE t1;
  DATATYPE t10;
  DATATYPE t11;
  DATATYPE t12;
  DATATYPE t13;
  DATATYPE t14;
  DATATYPE t15;
  DATATYPE t16;
  DATATYPE t17;
  DATATYPE t18;
  DATATYPE t19;
  DATATYPE t2;
  DATATYPE t20;
  DATATYPE t21;
  DATATYPE t22;
  DATATYPE t23;
  DATATYPE t24;
  DATATYPE t25;
  DATATYPE t26;
  DATATYPE t27;
  DATATYPE t28;
  DATATYPE t29;
  DATATYPE t3;
  DATATYPE t30;
  DATATYPE t31;
  DATATYPE t32;
  DATATYPE t33;
  DATATYPE t34;
  DATATYPE t35;
  DATATYPE t36;
  DATATYPE t37;
  DATATYPE t38;
  DATATYPE t39;
  DATATYPE t4;
  DATATYPE t40;
  DATATYPE t41;
  DATATYPE t42;
  DATATYPE t43;
  DATATYPE t44;
  DATATYPE t45;
  DATATYPE t5;
  DATATYPE t6;
  DATATYPE t7;
  DATATYPE t8;
  DATATYPE t9;
  DATATYPE tc1;
  DATATYPE tc10;
  DATATYPE tc11;
  DATATYPE tc12;
  DATATYPE tc13;
  DATATYPE tc14;
  DATATYPE tc16;
  DATATYPE tc17;
  DATATYPE tc18;
  DATATYPE tc2;
  DATATYPE tc20;
  DATATYPE tc21;
  DATATYPE tc26;
  DATATYPE tc3;
  DATATYPE tc4;
  DATATYPE tc5;
  DATATYPE tc6;
  DATATYPE tc7;
  DATATYPE tc8;
  DATATYPE tc9;
  DATATYPE y1;
  DATATYPE y10;
  DATATYPE y11;
  DATATYPE y12;
  DATATYPE y13;
  DATATYPE y14;
  DATATYPE y15;
  DATATYPE y16;
  DATATYPE y17;
  DATATYPE y18;
  DATATYPE y19;
  DATATYPE y2;
  DATATYPE y20;
  DATATYPE y21;
  DATATYPE y3;
  DATATYPE y4;
  DATATYPE y5;
  DATATYPE y6;
  DATATYPE y7;
  DATATYPE y8;
  DATATYPE y9;
  DATATYPE z0;
  DATATYPE z1;
  DATATYPE z10;
  DATATYPE z11;
  DATATYPE z12;
  DATATYPE z13;
  DATATYPE z14;
  DATATYPE z15;
  DATATYPE z16;
  DATATYPE z17;
  DATATYPE z2;
  DATATYPE z3;
  DATATYPE z4;
  DATATYPE z5;
  DATATYPE z6;
  DATATYPE z7;
  DATATYPE z8;
  DATATYPE z9;

  // Instructions (body)
  y14 = XOR(U3,U5);
  y13 = XOR(U0,U6);
  y9 = XOR(U0,U3);
  y8 = XOR(U0,U5);
  t0 = XOR(U1,U2);
  y12 = XOR(y13,y14);
  y1 = XOR(t0,U7);
  t1 = XOR(U4,y12);
  y4 = XOR(y1,U3);
  y2 = XOR(y1,U0);
  y5 = XOR(y1,U6);
  y15 = XOR(t1,U5);
  y20 = XOR(t1,U1);
  t5 = AND(y4,U7);
  y3 = XOR(y5,y8);
  t8 = AND(y5,y1);
  y6 = XOR(y15,U7);
  y10 = XOR(y15,t0);
  t2 = AND(y12,y15);
  y11 = XOR(y20,y9);
  t3 = AND(y3,y6);
  y19 = XOR(y10,y8);
  t15 = AND(y8,y10);
  t6 = XOR(t5,t2);
  y7 = XOR(U7,y11);
  y17 = XOR(y10,y11);
  y16 = XOR(t0,y11);
  t12 = AND(y9,y11);
  t4 = XOR(t3,t2);
  t10 = AND(y2,y7);
  t13 = AND(y14,y17);
  y21 = XOR(y13,y16);
  y18 = XOR(U0,y16);
  t7 = AND(y13,y16);
  t16 = XOR(t15,t12);
  t17 = XOR(t4,y20);
  t14 = XOR(t13,t12);
  t9 = XOR(t8,t7);
  t11 = XOR(t10,t7);
  t18 = XOR(t6,t16);
  t21 = XOR(t17,t14);
  t19 = XOR(t9,t14);
  t20 = XOR(t11,t16);
  t22 = XOR(t18,y19);
  t23 = XOR(t19,y21);
  t24 = XOR(t20,y18);
  t25 = XOR(t21,t22);
  t26 = AND(t21,t23);
  t30 = XOR(t23,t24);
  t27 = XOR(t24,t26);
  t31 = XOR(t22,t26);
  t28 = AND(t25,t27);
  t32 = AND(t31,t30);
  t29 = XOR(t28,t22);
  t33 = XOR(t32,t24);
  z5 = AND(t29,y7);
  z14 = AND(t29,y2);
  t34 = XOR(t23,t33);
  t35 = XOR(t27,t33);
  t42 = XOR(t29,t33);
  z2 = AND(t33,U7);
  z11 = AND(t33,y4);
  t36 = AND(t24,t35);
  z6 = AND(t42,y11);
  z15 = AND(t42,y9);
  t37 = XOR(t36,t34);
  t38 = XOR(t27,t36);
  t44 = XOR(t33,t37);
  z1 = AND(t37,y6);
  z10 = AND(t37,y3);
  t39 = AND(t29,t38);
  z0 = AND(t44,y15);
  z9 = AND(t44,y12);
  t40 = XOR(t25,t39);
  tc4 = XOR(z0,z2);
  tc5 = XOR(z1,z0);
  t41 = XOR(t40,t37);
  t43 = XOR(t29,t40);
  z4 = AND(t40,y1);
  z13 = AND(t40,y5);
  t45 = XOR(t42,t41);
  z8 = AND(t41,y10);
  z17 = AND(t41,y8);
  z3 = AND(t43,y16);
  z12 = AND(t43,y13);
  z7 = AND(t45,y17);
  z16 = AND(t45,y14);
  tc6 = XOR(z3,z4);
  tc12 = XOR(z3,z5);
  tc7 = XOR(z12,tc4);
  tc1 = XOR(z15,z16);
  tc8 = XOR(z7,tc6);
  tc11 = XOR(tc6,tc5);
  tc14 = XOR(tc4,tc12);
  tc9 = XOR(z8,tc7);
  tc2 = XOR(z10,tc1);
  tc13 = XOR(z13,tc1);
  tc16 = XOR(z6,tc8);
  tc10 = XOR(tc8,tc9);
  tc3 = XOR(z9,tc2);
  tc21 = XOR(tc2,z11);
  tc18 = XOR(tc13,tc14);
  tc20 = XOR(z15,tc16);
  tc17 = XOR(z14,tc10);
  *S3 = XOR(tc3,tc11);
  *S0 = XOR(tc3,tc16);
  _tmp1_ = XOR(z12,tc18);
  _tmp2_ = XOR(tc10,tc18);
  tc26 = XOR(tc17,tc20);
  *S5 = XOR(tc21,tc17);
  *S4 = XOR(tc14,*S3);
  _tmp3_ = XOR(*S3,tc16);
  *S7 = NOT(_tmp1_);
  *S6 = NOT(_tmp2_);
  _tmp4_ = XOR(tc26,z17);
  *S1 = NOT(_tmp3_);
  *S2 = NOT(_tmp4_);

}

/* main function */
void SubBytes__ (/*inputs*/ DATATYPE inputSB__[8], /*outputs*/ DATATYPE out__[8]) {
  
  // Variables declaration
  ;

  // Instructions (body)
  SubBytes_single__V16(inputSB__[0],inputSB__[1],inputSB__[2],inputSB__[3],inputSB__[4],inputSB__[5],inputSB__[6],inputSB__[7],&out__[0],&out__[1],&out__[2],&out__[3],&out__[4],&out__[5],&out__[6],&out__[7]);

}


/* **************************************************************** */
/*                            Usuba source                          */
/*                                                                  */
/*

 _no_inline table SubBytes_single(input :  b8 :: base)
  returns output :  b8 :: base
{
  99, 124, 119, 123, 242, 107, 111, 197, 48, 1, 103, 43, 254, 215, 171, 118, 202, 130, 201, 125, 250, 89, 71, 240, 173, 212, 162, 175, 156, 164, 114, 192, 183, 253, 147, 38, 54, 63, 247, 204, 52, 165, 229, 241, 113, 216, 49, 21, 4, 199, 35, 195, 24, 150, 5, 154, 7, 18, 128, 226, 235, 39, 178, 117, 9, 131, 44, 26, 27, 110, 90, 160, 82, 59, 214, 179, 41, 227, 47, 132, 83, 209, 0, 237, 32, 252, 177, 91, 106, 203, 190, 57, 74, 76, 88, 207, 208, 239, 170, 251, 67, 77, 51, 133, 69, 249, 2, 127, 80, 60, 159, 168, 81, 163, 64, 143, 146, 157, 56, 245, 188, 182, 218, 33, 16, 255, 243, 210, 205, 12, 19, 236, 95, 151, 68, 23, 196, 167, 126, 61, 100, 93, 25, 115, 96, 129, 79, 220, 34, 42, 144, 136, 70, 238, 184, 20, 222, 94, 11, 219, 224, 50, 58, 10, 73, 6, 36, 92, 194, 211, 172, 98, 145, 149, 228, 121, 231, 200, 55, 109, 141, 213, 78, 169, 108, 86, 244, 234, 101, 122, 174, 8, 186, 120, 37, 46, 28, 166, 180, 198, 232, 221, 116, 31, 75, 189, 139, 138, 112, 62, 181, 102, 72, 3, 246, 14, 97, 53, 87, 185, 134, 193, 29, 158, 225, 248, 152, 17, 105, 217, 142, 148, 155, 30, 135, 233, 206, 85, 40, 223, 140, 161, 137, 13, 191, 230, 66, 104, 65, 153, 45, 15, 176, 84, 187, 22
}


 node SubBytes(inputSB :  u16x8 :: base)
  returns out :  u16x8 :: base
vars

let
  (out) = SubBytes_single(inputSB)
tel

*/
 