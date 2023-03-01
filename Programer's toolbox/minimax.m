function [mmr, mmm] = minimax(M)

%%MINIMAX

mmr = max(M') - min(M');

max_mtx = max(max(M));
min_mtx = min(min(M));
mmm = max_mtx - min_mtx;



