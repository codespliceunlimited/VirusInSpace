/// @description scr_sn_noise(min, max, octaves, persistence, scale, x, [y, z]);
/// @param min
/// @param  max
/// @param  octaves
/// @param  persistence
/// @param  scale
/// @param  x
/// @param  [y
/// @param  z]
function scr_sn_noise() {

	var minVal = argument[0],
	    maxVal = argument[1],
	    octaves = argument[2],
	    persistence = argument[3],
	    freq = argument[4],
	    amp = 1, 
	    maxamp = 0, 
	    sum = 0;

	for (var i=0; i < octaves; ++i) {
    
	    switch (argument_count) {
	        case 6:
	            sum += amp * _sn_noise2d(freq*argument[5], 0); 
	            break;
	        case 7:
	            sum += amp * _sn_noise2d(freq*argument[5], freq*argument[6]); 
	            break;
	        case 8:
	            sum += amp * _sn_noise3d(freq*argument[5], freq*argument[6], freq*argument[7]); 
	            break;        
	        case 9:
	            sum += amp * _sn_noise4d(freq*argument[5], freq*argument[6], freq*argument[7], freq*argument[8]); 
	            break;
	    }
	    freq *= 2;
	    maxamp += amp;
	    amp *= persistence;
	}

	return (sum / maxamp) * (maxVal - minVal) / 2 + (maxVal + minVal) / 2;



}
