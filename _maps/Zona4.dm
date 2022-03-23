#if !defined(MAP_FILE)


//		#include "map_files\Stalker\maze\underground1_2.dmm"
		#include "map_files\Stalker\maze\underground2.dmm"

		#define MAP_FILE "ungerground2.dmm"
		#define MAP_NAME "Army bunker"
		#define MAP_TRANSITION_CONFIG list(MAIN_STATION = CROSSLINKED, CENTCOMM = SELFLOOPING)
#elif !defined(MAP_OVERRIDE)

	#warn a map has already been included, ignoring undeground1.dmm.

#endif