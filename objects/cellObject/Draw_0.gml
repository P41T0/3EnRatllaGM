if(firstPaint == false){
	cell_state = global.gameArrayPosition[xposition][yposition]
	if (cell_state == 0) {
		draw_sprite(emptySprite, 0, x, y);
	} else if (cell_state == 1) {
		draw_sprite(xSprite, 0, x, y);
	} else if (cell_state == 2) {
		draw_sprite(oSprite, 0, x, y);
	}
}else{
	firstPaint = false;
	draw_sprite(emptySprite, 0, x, y);
}
