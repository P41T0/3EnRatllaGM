if (global.currentPlayer == 1) {
if (cell_state == 0 && !global.game_over) { 
    global.gameArrayPosition[xposition][yposition] = global.currentPlayer;
    cell_state = global.currentPlayer;
    set_turn()
}
}