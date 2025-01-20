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

function set_turn(){
	matchEnded = false;
	if global.currentPlayer == 1{
		if(check_winner(global.currentPlayer) == false){
			global.currentPlayer = 2;
			global.placedObjects += 1;
			if(global.placedObjects >= 9){
				end_game("Empat!");
				matchEnded = true
			}
		}else{
			end_game("El jugador 1 ha guanyat!");
			matchEnded = true
		}
		if(matchEnded == false){
		torn_IA();
		if(check_winner(global.currentPlayer) == false){
			global.placedObjects +=1;
			global.currentPlayer = 1
			if(global.placedObjects >= 9){
				end_game("Empat!");
				matchEnded = true
			}
		}else{
			end_game("El jugador 2 ha guanyat!");
			matchEnded = true
		}
	}
	}
	

}


function torn_IA() {
    // Verifiquem cada posició del tauler
    for (var i = 0; i < 3; i++) {
        for (var j = 0; j < 3; j++) {
            if (global.gameArrayPosition[i][j] == 0) {
                // Si la casella està buida, la IA posa fitxa
                global.gameArrayPosition[i][j] = 2; 
                return; 
            }
        }
    }
}

function end_game(message) {
	global.game_over = true;
	if(show_question(message + "Vols tornar a jugar?") == true){
		room_goto(GameRoom);
	}else{
	room_goto(MenuRoom);
	}
}

