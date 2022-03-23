/*
Assistant
*/
/datum/job/assistant
	title = "Army"
	faction_s = "Army"
//	flag = ASSISTANT
//	department_flag = CIVILIAN
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	supervisors = "Army Commander"
	selection_color = "#2E8B57"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 1
	outfit = /datum/outfit/job/army

/datum/job/army
	title = "Army"
	faction_s = "Army"
//	flag = ASSISTANT
//	department_flag = CIVILIAN
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	supervisors = "Army Commander"
	selection_color = "#2E8B57"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 1
	outfit = /datum/outfit/job/army




/datum/job/army/private
	title = "Private"
	faction_s = "Army"
//	flag = ASSISTANT
//	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 7
	spawn_positions = -1
	supervisors = "Your sergeant"
	selection_color = "#2E8B57"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 0
	outfit = /datum/outfit/job/army/private


/datum/outfit/job/army/private
	name = "Army private"


/datum/outfit/job/army/private/pre_equip(mob/living/carbon/human/H)
	..()
	head = null
	uniform = /obj/item/clothing/under/army/m88/bush
	suit = null
	ears = null
	belt = /obj/item/weapon/storage/belt/army/one
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	back = /obj/item/weapon/storage/backpack/stalker
	suit_store = null
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = null
	r_pocket = /obj/item/device/radio
	l_pocket = null
	faction_s = "Army"
	H << "<b>You do not know how many weeks have passed since the apocalypse. The sirens, the explosions, the work of the counters - it was surreal. You thanked soviet engineers and scientists - they had everything ready for such kind of event. Either way, if you're staying or going - you are the untouched one, never been exposed to the horrors of the surface.</b>"
	H.untouched = 1
	H << "\n"
	H << "<b>You are a Private of the Soviet Army. Or, what's left of it. Your job was to protect and serve your country, but in the spite of recent events, it's really just what your superiors say. Of one thing you are certain: survival is key.</b>"


/datum/job/army/sergeant
	title = "Sergeant"
	faction_s = "Army"
//	flag = ASSISTANT
//	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = -1
	supervisors = "No-one, as the nuclear apocalypse destroyed all communications"
	selection_color = "#2E8B57"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 0
	outfit = /datum/outfit/job/army/sergeant


/datum/outfit/job/army/sergeant
	name = "Army sergeant"


/datum/outfit/job/army/sergeant/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/HoS
	uniform = /obj/item/clothing/under/army/m88/bush
	suit = /obj/item/clothing/suit/army
	ears = null
	belt = /obj/item/weapon/storage/belt/army/one
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	back = null
	suit_store = /obj/item/weapon/gun/projectile/automatic/aksu74
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = null
	r_pocket = /obj/item/device/radio
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)
	faction_s = "Army"
	H << "<b>You do not know how many weeks have passed since the apocalypse. The sirens, the explosions, the work of the counters - it was surreal. You thanked soviet engineers and scientists - they had everything ready for such kind of event. Either way, if you're staying or going - you are the untouched one, never been exposed to the horrors of the surface.</b>"
	H.untouched = 1
	H << "\n"
	H << "<b>You are the Sergeant of the Soviet Army. After the event, you have been trying to contact command centers - to no avail. The supplies are running thin. You have several days worth of food, and several weeks in terms of generator fuel. It's time to lead your soldiers out. This is a rural area, so there are likely to be villages.</b>"
	H << "<b>But first things first - clearing the rest of the bunker. It is old and requires extensive research to get out of. But your survival depends on it - or so you have thought.</b>"








































/datum/outfit/job/army
	name = "Army"

/datum/outfit/job/army/pre_equip(mob/living/carbon/human/H)
	..()
	head = null
	uniform = /obj/item/clothing/under/color/switer/lolg
	suit = /obj/item/clothing/suit/army
	ears = null
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	back = /obj/item/weapon/storage/backpack/stalker
	suit_store = /obj/item/weapon/gun/projectile/automatic/aksu74
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b545 = 1,
							/obj/item/ammo_box/magazine/stalker/m545 = 2,
							/obj/item/weapon/reagent_containers/pill/stalker/aptechka/army = 1)
	r_pocket = /obj/item/device/radio
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)
	faction_s = "Army"



/*/datum/job/army_eliteagro
	title = "EliteAgro"
	outfit = /datum/outfit/job/army/eliteagro

/datum/outfit/job/army_eliteagro
	name = "EliteAgro"
	faction_s = "Army"

/datum/outfit/job/army/eliteagro/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/beret_ua
	suit = /obj/item/clothing/suit/skat
	gloves = /obj/item/clothing/gloves/fingerless
	//back2 = pick(/obj/item/weapon/gun/projectile/automatic/ak74)
	suit_store = pick(/obj/item/weapon/gun/projectile/automatic/ak74)
	backpack_contents = list(/obj/item/ammo_box/stalker/b545ap = 1,
							/obj/item/ammo_box/magazine/stalker/m545 = 2,
							/obj/item/weapon/reagent_containers/pill/stalker/aptechka/army = 1,
							/obj/item/clothing/glasses/eyepatch = 1)
	var/datum/martial_art/plasma_fist/plasma_fist = new(null)
	plasma_fist.teach(H)



/datum/job/petrovich
	title = "Petrovich"
	faction_s = "Army"
	outfit = /datum/outfit/job/petrovich
	faction = "Station"
	total_positions = -1
	locked = 1
	spawn_positions = -1
	supervisors = ""
	selection_color = "#2E8B57"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 1
	real_rank = "Lieutenant"

/datum/outfit/job/petrovich
	name = "Petrovich"
	faction_s = "Army"

/datum/outfit/job/petrovich/pre_equip(mob/living/carbon/human/H)
	head = null
	uniform = /obj/item/clothing/under/color/switer/lolg
	suit = /obj/item/clothing/suit/army
	ears = null
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	back = /obj/item/weapon/storage/backpack/stalker/tourist
	suit_store = /obj/item/weapon/gun/projectile/automatic/aksu74
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b545ap = 1,
							/obj/item/ammo_box/magazine/stalker/m545 = 2,
							/obj/item/weapon/reagent_containers/pill/stalker/aptechka/army = 1,
							/obj/item/clothing/suit/berill = 1)
	r_pocket = /obj/item/device/radio
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)

/datum/outfit/army  // For select_equipment
	name = "Army Soldier"

	head = null
	ears = null
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	back = /obj/item/weapon/storage/backpack/stalker/tourist
	//back2 = /obj/item/weapon/gun/projectile/automatic/aksu74
	suit_store = /obj/item/weapon/gun/projectile/automatic/aksu74
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b545 = 1,
							/obj/item/ammo_box/magazine/stalker/m545 = 2,
							/obj/item/weapon/reagent_containers/pill/stalker/aptechka/army = 1)
	l_pocket = /obj/item/weapon/stalker/bolts
	r_pocket = /obj/item/device/radio
	faction_s = "Army"

/datum/outfit/army/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = /obj/item/clothing/under/color/switer/lolg
	suit = /obj/item/clothing/suit/army
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)
	r_pocket =/obj/item/weapon/stalker/bolts

/datum/outfit/armycommander // For select_equipment
	name = "Army Commander"

	head = /obj/item/clothing/head/beret_ua
	uniform = /obj/item/clothing/under/color/switer/dark
	suit = /obj/item/clothing/suit/army
	ears = null
	belt = /obj/item/weapon/gun/projectile/automatic/pistol/fort12
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	back = /obj/item/weapon/storage/backpack/stalker/tourist
	//back2 = /obj/item/weapon/gun/projectile/automatic/ak74
	suit_store = /obj/item/weapon/gun/projectile/automatic/ak74
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b545ap = 1,
							/obj/item/ammo_box/magazine/stalker/m545 = 2,
							/obj/item/weapon/reagent_containers/pill/stalker/aptechka/army = 1,
							/obj/item/weapon/reagent_containers/food/drinks/bottle/vodka/kazaki = 1)
	r_pocket = /obj/item/device/radio
	l_pocket = /obj/item/ammo_box/magazine/stalker/m9x18fort
	faction_s = "Army"
	*/