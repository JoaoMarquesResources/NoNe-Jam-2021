/// @description Insert description here
// You can write your code in this editor

// Horizontal Collision
if (place_meeting(x + hsp, y, oWall) || place_meeting(x + hsp, y, oEnemyMushroom)) {
   repeat (abs(hsp) + 1) {
      if (place_meeting(x + sign(hsp), y, oWall) || place_meeting(x + sign(hsp), y, oEnemyMushroom))
         break;
      x += sign(hsp);
   }
   hsp = 0;
}


x += hsp;

// Vertical Collision
if (place_meeting(x, y + vsp, oWall) || place_meeting(x, y + vsp, oEnemyMushroom)) {
   repeat (abs(vsp) + 1) {
      if (place_meeting(x, y + sign(vsp), oWall) || place_meeting(x, y + sign(vsp), oEnemyMushroom))
         break;
      y += sign(vsp);
   }
   vsp = 0;
}

y += vsp;