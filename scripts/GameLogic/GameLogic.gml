
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



function torn_IA() {
    // Verifiquem cada posició del tauler
    for (var i = 0; i < 3; i++) {
        for (var j = 0; j < 3; j++) {
            if (global.gameArrayPosition[i][j] == 0) {
                // Si la casella està buida, la IA posa fitxa
                global.gameArrayPosition[i][j] = 2; 
                global.placedObjects++; // Incrementar contador d'objectes
                return; 
            }
        }
    }
}

function end_game(message) {
	global.game_over = true;
	show_message(message);
}

