function _scr_sn_grad3() {
	var a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, res;
    
	a0[0]  =  1; a0[1]  =  1; a0[2]  = 0;
	a1[0]  = -1; a1[1]  =  1; a1[2]  = 0;
	a2[0]  =  1; a2[1]  = -1; a2[2]  = 0;
	a3[0]  = -1; a3[1]  = -1; a3[2]  = 0;
	a4[0]  =  1; a4[1]  =  0; a4[2]  = 1;
	a5[0]  = -1; a5[1]  =  0; a5[2]  = 1;
	a6[0]  =  1; a6[1]  =  0; a6[2]  = -1;
	a7[0]  = -1; a7[1]  =  0; a7[2]  = -1;
	a8[0]  =  0; a8[1]  =  1; a8[2]  = 1;
	a9[0]  =  0; a9[1]  = -1; a9[2]  = 1;
	a10[0] =  0; a10[1] =  1; a10[2] = -1;
	a11[0] =  0; a11[1] = -1; a11[2] = -1;

	res[0] = a0; res[1] = a1; res[2] = a2; res[3] = a3;
	res[4] = a4; res[5] = a5; res[6] = a6; res[7] = a7;
	res[8] = a8; res[9] = a9; res[10] = a10; res[11] = a11;

	return res;



}
