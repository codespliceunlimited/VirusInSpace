///mean_of_degrees(List);
///@arg List
function mean_of_degrees_list() {

	list = argument[0];

	deg1 = ds_list_find_value(list,0);
	size = ds_list_size(list);
	if size <2 {
		return -1;	
	}
	differnce = 0;

	for (var i = 1; i < size; i++){
		deg2 = ds_list_find_value(list,i);
			differnce += angle_difference(deg1,deg2);
		
		
	}
	average = differnce/size;
	deg3 = deg1 + average;	
	if deg3 = undefined {
		return -1;
	}

	if deg3 = noone {
		return -1;
	}

	deg3 = wrap(deg3,0,359);

	return deg3; 


}
