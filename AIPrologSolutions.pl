defects(LOC, V_G, EV_G, IV_G, N, V, L, D, I, E, B, T) :-
  N =< 1, !, write('TRUE').

defects(LOC, V_G, EV_G, IV_G, N, V, L, D, I, E, B, T) :-
  N > 1,
  (	
	I =< 122.55,
	(
		L =< 0.05, 
        (
			I =< 39.38,
			(
				EV_G =< 1.4,
				(
					D =< 19.5,
					(
						IV_G =< 2, !, write('TRUE')	
						;
						IV_G > 2,
						(
							LOC =< 50, !, write('FALSE')
							;
							LOC > 50, !, write('TRUE')	
						)
					)
					;
					D > 19.5, !, write('TRUE')	
				)
				;
				EV_G > 1.4, !, write('TRUE')
			)
			;
			I > 39.38,
			(
				V_G =< 3, !, write('FALSE')
				;
				V_G > 3,
				(
					IV_G =< 8,
					(
						L =< 0.04,
						(
							EV_G =<14, !, write('FALSE')
							;
							EV_G > 14, !, write('TRUE')
						)
						;
						L > 0.04,
						(
							I =< 71.94,
							(
								D =< 21, !, write('TRUE')
								;
								D >21, !, write('FALSE')
							)
							;
							I > 71.94, !, write('FALSE')
						)
					)
					;
					IV_G > 8, !, write('TRUE')
				)
			)
		)
		;
		L > 0.05, !, write('FALSE')		
	)
    ;
	I > 122.55, !, write('TRUE')	
  ).