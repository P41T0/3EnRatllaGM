
function check_winner(player) {
	for (var i = 0; i < 3; i++) {
	    if ((global.gameArrayPosition[i][0] == player && global.gameArrayPosition[i][1] == player && global.gameArrayPosition[i][2] == player) ||
	        (global.gameArrayPosition[0][i] == player && global.gameArrayPosition[1][i] == player && global.gameArrayPosition[2][i] == player)) {
	        return true;
	    }
	}

	if ((global.gameArrayPosition[0][0] == player && global.gameArrayPosition[1][1] == player && global.gameArrayPosition[2][2] == player) ||
	    (global.gameArrayPosition[0][2] == player && global.gameArrayPosition[1][1] == player && global.gameArrayPosition[2][0] == player)) {
	    return true;
	}

	return false;
}


function end_game(message) {
	global.game_over = true;
	show_message(message);
}

