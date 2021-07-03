// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_item(x, y, item){
	//Spawn
	var inst = instance_create_layer(x, y, "Instances", oApple);
	inst.itemType = item;
	
	//Sprite
	inst.sprite_index = oGame.itemSprite[item];
}