if (cell_state == 0) {
    global.globalPosition[xposition][yposition] = global.currentPlayer
	cell_state = global.currentPlayer
	if(global.currentPlayer == 1){
		global.currentPlayer = 2
	}
	else if(global.currentPlayer == 2){
		global.currentPlayer = 1
	}
	global.placedObjects += 1
}
