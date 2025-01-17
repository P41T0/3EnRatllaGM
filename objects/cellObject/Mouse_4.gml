
if (cell_state == 0 && !global.game_over) { 
    global.gameArrayPosition[xposition][yposition] = global.currentPlayer;
    cell_state = global.currentPlayer;

    if (check_winner(global.currentPlayer)) {
        end_game("¡El Jugador " + string(global.currentPlayer) + " ha ganado!");
        return;
    }
    if (global.currentPlayer == 1) {
        global.currentPlayer = 2; // torn IA
		torn_IA();
		if (check_winner(global.currentPlayer)) {
            end_game("¡El Jugador " + string(global.currentPlayer) + " ha ganado!");
            return;	
        }
		global.currentPlayer = 1;
		
    } else {
        global.currentPlayer = 1;
    }

    global.placedObjects += 1; 
	
	if (global.placedObjects >= 9) {
        end_game("¡Empat!");
    }
}