/// @description Insert description here
// You can write your code in this editor
// world Details

screenWidthPosition = room_width / 32;



globalvar BlueColor, DarkerRed,pingColor,YellowColor,GreyColor, newsFeed, ITEMINFO
;


// Color Theme
BlueColor = make_color_rgb(98,157,196);
DarkerRed = make_color_rgb(173,82,81);
pingColor = make_color_rgb(250,143,142);
YellowColor = make_color_rgb(250,249,77);
GreyColor = make_color_rgb(166,186,199);

// Data Structures
newsFeed = ds_list_create();




				//Init Variables 
//NewsFeed
startfeedx = 200;
startfeedy = 1000;
newsTimeOut = 300;


// Money
cash = 0;

InitItems();

