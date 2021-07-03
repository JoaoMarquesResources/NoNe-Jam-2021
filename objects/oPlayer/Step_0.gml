/// @description Insert description here
//Player Input
key_jump = keyboard_check_pressed(vk_space);
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));

var move = key_right - key_left;

hsp = (move * walksp);

//Gravidade
vsp = vsp + grv;

//Jump
if (place_meeting(x, y + 1, oWall)) && (key_jump)
{
	vsp = -5;
}

// Horizontal Collision
if (place_meeting(x + hsp, y, oWall)) {
   repeat (abs(hsp) + 1) {
      if (place_meeting(x + sign(hsp), y, oWall))
         break;
      x += sign(hsp);
   }
   hsp = 0;
}


x += hsp;

// Vertical Collision
if (place_meeting(x, y + vsp, oWall)) {
   repeat (abs(vsp) + 1) {
      if (place_meeting(x, y + sign(vsp), oWall))
         break;
      y += sign(vsp);
   }
   vsp = 0;
}

y += vsp;

//Wall Slide
var wall = place_meeting(x + sign(hsp), y, oWall);
if (wall)
{
	//Trocando de sprite
	sprite_index = sWallSlide;
}else sprite_index = sPlayer;


//Flip the player
if (hsp != 0)
{
	image_xscale = sign(hsp);
}