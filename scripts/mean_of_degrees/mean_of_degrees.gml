///mean_of_degrees(degree1,degree2,degree3...);
///@arg degree1
///@arg degree2
///@arg degree3..

deg1 = argument[0];
deg2 = argument[1];

differnce = angle_difference(deg1,deg2);



if argument_count > 2 {
	for (var i = 2; i < argument_count; i++){
			nextdiffernce = angle_difference(deg1,argument[i]);
			differnce += nextdiffernce;
			
	}
}
average = differnce/argument_count;
deg3 = (average+deg1);

return deg3; 