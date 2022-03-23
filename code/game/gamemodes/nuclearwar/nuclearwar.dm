/datum/game_mode/nuclearwar
	name = "Bunker survival"
	config_tag = "nuclearwar"
	required_players = 0

	var/winning_faction = null
	var/finished = 0
	var/check_counter = 0
	var/start_hold_time = 0
	var/list/control_table = list()
	//reroll_friendly = 1

/datum/game_mode/nuclearwar/announce()
	world << "<B>The current game mode is - Nuclear war!</B>"
	world << "<B>Explore the bunker and its surroundings. Avoid radiation, deal with survivors, and, most importantly - stay alive!</B>"
	world << "<B><font color='green'>The nuclear apocalypse destroyed everything, but not everyone.</font></B>"


/datum/game_mode/nuclearwar/pre_setup()
	return 1

/datum/game_mode/nuclearwar/post_setup()
	..()