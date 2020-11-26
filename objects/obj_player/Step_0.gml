var onGround=instance_place(x,y+5,obj_wall);
vspeed += 0.4;
if (onGround)
	vspeed = 0;
if (keyboard_check(vk_right))
{
	image_xscale = 1;
	hspeed = 10;	
	sprite_index = spr_player_walk;
}
else if (keyboard_check(vk_left))
{
	image_xscale = -1;
	hspeed = -10;
	sprite_index = spr_player_walk;
}
else{
	hspeed = 0;
	image_index = spr_player_idle;
}
if (onGround && keyboard_check_pressed(vk_space)){
	vspeed = -15;
	audio_play_sound(snd_grunt,1,false);
}
if (instance_place(x+hspeed,y+vspeed,obj_wall))
{
	vspeed = 0;
	hspeed = 0;
}

if (instance_place(x,y,obj_door)){
	var next = room_next(room);
	if (next != -1)
		room_goto(next);
}

//timer--;
//if (timer <= 0){
//	timer = room_speed * 1;
//	global.points++;
//}

	