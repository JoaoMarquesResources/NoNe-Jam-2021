/// @description Insert description here
// You can write your code in this editor

//Draw inventory contents
for (var i = 0; i < ds_list_size(global.inv); i++){
	var arr = global.inv[| i];
	
	var item = arr[0];
	var count = arr[1];
	
	item.image_xscale = 2;
	item.image_yscale = 2;
	draw_sprite(itemSprite[item], 0, 16 + 50 * i, 740);
	draw_text(32 + 50 * i, 740, count);
}
