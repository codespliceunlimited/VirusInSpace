/// @description Insert description here
// You can write your code in this editor
// world Details

screenWidthPosition = room_width / 32;
screenH = room_height/32;



globalvar BlueColor, DarkerRed,pingColor,YellowColor,GreyColor, newsFeed, ITEMINFO, enemyTotal, seconds_passed,
checkPointList, Dead, finished, Points, cash,totalTime, scoreboardList
;


// Color Theme
BlueColor = make_color_rgb(98,157,196);
DarkerRed = make_color_rgb(173,82,81);
pingColor = make_color_rgb(250,143,142);
YellowColor = make_color_rgb(250,249,77);
GreyColor = make_color_rgb(166,186,199);

// Data Structures
newsFeed = ds_list_create();
checkPointList =  ds_list_create();


finished = false;

				//Init Variables 
//NewsFeed
startfeedx = 200;
startfeedy = 1000;
newsTimeOut = 300;


// Money
cash = 0;
Points = 0;


// init 
InitItems();
scr_sn_init();

//enemy

enemyTotal = 200;

enum states {
	wander,
	chase,
	run,
	comeBack,
	bite,
	check
}

Dead = false;

#region Camera
camera = view_camera[0];
follow = objPlayer;
view_W_half = camera_get_view_width(camera)*0.5;
view_H_half = camera_get_view_height(camera)*0.5;
xTo = xstart;
yTo = ystart;
viewBuffer = 80;
#endregion