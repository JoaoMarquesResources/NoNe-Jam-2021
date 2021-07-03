/// @description Insert description here
//Player Input
key_jump = keyboard_check_pressed(vk_space);
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));

var ground = place_meeting(x, y + 1, oWall);

var move = key_right - key_left;

hsp = (move * walksp);

//Gravidade
vsp = vsp + grv;

//Jump
if (place_meeting(x, y + 1, oWall)) && (key_jump)
{
	vsp = -5;
}

//Flip the player
if (hsp != 0)
{
	image_xscale = sign(hsp);
}

if (!ground)
{
	show_message("DAIJWD")
	instance_destroy(other.id);
}
