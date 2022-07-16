/// @description Insert description here
// You can write your code in this editor
// world Details
numbPlayers = 4;

globalvar BlueColor, DarkerRed,pingColor,YellowColor,GreyColor, newsFeed, ITEMINFO, enemyTotal, seconds_passed,
checkPointList, Dead, finished, Points, cash,totalTime, scoreboardList, paused
;

screenWidthPosition = room_width / 32;
screenH = room_height/32;

rollback_define_player(objPlayer)

rollback_define_input({
left: ord("A"),
right: ord("D"),
up: ord("W"),
down: ord("S"),
fire: mb_left,
grab: ord("E"),
m_x: m_axisx,
m_y: m_axisy

})

rollback_define_mock_input(1, {
    fire: vk_control,
    grab: vk_shift,
    left: ord("J"),
    right: ord("L")
});


if (!rollback_join_game())
{
	switch (os_type){
		case os_windows:
			rollback_create_game(numbPlayers,true);
		break;
		
		case os_operagx:
			rollback_create_game(numbPlayers,false);
		break;
		
	}
}

paused = true;

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

instance_create_layer(x,y,"Instances", objCamera)

#region Camera
camera = view_camera[0];
view_W_half = camera_get_view_width(camera)*0.5;
view_H_half = camera_get_view_height(camera)*0.5;
viewBuffer = 80;
#endregion