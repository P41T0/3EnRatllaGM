
function check_winner(player) {
	for (var i = 0; i < 3; i++) {
	    if ((global.arrayPosition[i][0] == player && global.arrayPosition[i][1] == player && global.arrayPosition[i][2] == player) ||
	        (global.arrayPosition[0][i] == player && global.arrayPosition[1][i] == player && global.arrayPosition[2][i] == player)) {
	        return true;
	    }
	}

	if ((global.arrayPosition[0][0] == player && global.arrayPosition[1][1] == player && global.arrayPosition[2][2] == player) ||
	    (global.arrayPosition[0][2] == player && global.arrayPosition[1][1] == player && global.arrayPosition[2][0] == player)) {
	    return true;
	}

	return false;
}


function end_game(message) {
	global.game_over = true;
	show_message(message);
}

