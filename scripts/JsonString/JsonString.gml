/// JsonString(json);
///@arg json_string
function JsonString(argument0) {

	var json_string = argument0;
	var the_first_word = "";

	var json_data = json_decode(json_string);
	if ds_map_exists(json_data, "words") {
	    var the_list_of_words = json_data[?"words"];
	    if !ds_list_empty(the_list_of_words) {
	        the_first_word = the_list_of_words[|0];
	    }
	}
	ds_map_destroy(json_data);

	return the_first_word ;



}
