// STRUCTURES


/obj/structure/army/lockerequipment
	name = "locker"
	desc = "Старый шкаф с экипировкой"
	eng_desc = "Old equipment locker. Still smells soviet."
	icon = 'icons/stalker/decor.dmi'
	icon_state = "shitok2"
	var/used = 0
	density = 0

/obj/structure/closet/army/locker
	name = "locker"
	desc = "Старый шкаф"
	eng_desc = "Old equipment locker. Still smells soviet."
	icon = 'icons/stalker/decor.dmi'
	icon_state = "shitok2"


/obj/structure/army/lockerequipment/attack_hand(mob/user)
	return attackby(null, user)


/obj/structure/army/lockerequipment/attackby(obj/item/I, mob/user, params)
	if(used)
		user << "<span class='notice'>The locker is empty!</span>"
		return

	if(ishuman(user))
		var/mob/living/carbon/human/H = user
		var/obj/item/clothing/suit/army/b = new
		H.equip_to_slot_if_possible(b, slot_wear_suit, 1)
		user << "<span class='notice'>You dress up using equipment from the locker.</span>"
		used = 1
		icon_state = "shitok2open"
		desc = "Старый шкаф с экипировкой. \n <b>Пустой.<\b>"
		eng_desc = "Old equipment locker. Still smells soviet. \n <b>It's empty.<\b>"


/obj/structure/rack/polka
	name = "shelf"
	desc = "Дерев&#255;нный стеллаж."
	eng_desc = "Wooden shelf."
	icon = 'icons/stalker/polka.dmi'
	icon_state = "polka"
	density = 1
	anchored = 1
	pass_flags = LETPASSTHROW

/obj/structure/closet/crate/army/green
	name = "crate"
	desc = "Обычный железный &#255;щик."
	eng_desc = "Steel rectangular crate. That one is green."
	icon = 'icons/stalker/army_decor.dmi'
	icon_crate = "green"
	icon_state = "green"

/obj/structure/closet/crate/army/green/wood
	name = "crate"
	desc = "Обычный деревянный &#255;щик."
	eng_desc = "wooden rectangular crate. That one is green."
	icon_crate = "crate2"
	icon_state = "crate2"
	open_sound = 'sound/effects/doorcreaky.ogg'

/obj/structure/closet/crate/army/green/two
	icon_crate = "green2"
	icon_state = "green2"

/obj/structure/closet/crate/army/green/three
	icon_crate = "green3"
	icon_state = "green3"

/obj/structure/closet/crate/army/green/four
	icon_crate = "green4"
	icon_state = "green4"

/obj/structure/closet/crate/army/green/foure
	icon_crate = "green4e"
	icon_state = "green4e"

/obj/structure/closet/crate/army/green/wood/two
	icon_crate = "yashik"
	icon_state = "yashik"
	eng_desc = "wooden rectangular crate."

/obj/structure/closet/crate/army/green/wood/locked
	name = "crate"
	desc = "Обычный деревянный &#255;щик."
	eng_desc = "wooden rectangular crate. That one is green."
	icon_crate = "crate2"
	icon_state = "crate2"
	open_sound = 'sound/effects/doorcreaky.ogg'

/obj/structure/closet/crate/army/green/wood/locked
	name = "crate"
	desc = "Закрытый деревянный &#255;щик. Такие обычно используются для хранения чего-то ценного."
	eng_desc = "Army crate. It's locked. It seems something of value is inside."

/obj/structure/closet/crate/army/green/wood/locked/two
	icon_crate = "yashik"
	icon_state = "yashik"


/obj/structure/closet/crate/army/green/wood/locked/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/weapon/crowbar))
		new /obj/structure/closet/crate/army/green/wood(src)
		user << "<span class='warning'>You break the lock on the crate!</span>"
		user.visible_message("[user] broke the lock on the crate!")
		qdel(src)
		return
	else
		user << "<span class='warning'>You need a crowbar to remove the lock!</span>"
		return


/obj/structure/closet/crate/army/green/wood/locked/two/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/weapon/crowbar))
		new /obj/structure/closet/crate/army/green/wood/two(src)
		user << "<span class='warning'>You break the lock on the crate!</span>"
		user.visible_message("[user] broke the lock on the crate!")
		qdel(src)
		return
	else
		user << "<span class='warning'>You need a crowbar to remove the lock!</span>"
		return



/obj/structure/closet/crate/army/green/wood/locked/attack_hand(mob/user)
	return attackby(null, user)

/obj/structure/closet/shkaf64
	name = "Shkaf"
	desc = "Шкаф"
	eng_desc = "Shkaf"
	icon = 'icons/stalker/army_decor_64x64.dmi'
	icon_state = "shkaf64"


/obj/structure/barricade/stalker/box/army
	desc = "дерев&#255;нный &#255;щик"
	eng_desc = "wooden rectangular crate."
	lootenable = 0
	doubleloot = 0
	loot = null

// DOORS

/obj/structure/mineral_door/wood/armywood
	icon = 'icons/stalker/army_doors.dmi'
	icon_state = "wood"
	desc = ""
	eng_desc = ""

/obj/structure/mineral_door/wood/armywood/two
	icon = 'icons/stalker/army_doors.dmi'
	icon_state = "rustic"
	desc = ""
	eng_desc = ""

/obj/structure/mineral_door/steel/blast
	icon = 'icons/stalker/army_doors.dmi'
	icon_state = "blast"


// BUMAGA
/obj/item/weapon/paper/army/ustav/karaul
	name = "IF YOU ARE STANDING GUARD - READ THIS."
	info = "<B>**NOTICE**</B><BR><BR>Smelting operations moved on-station.<BR><BR>Take your unrefined ore to the Redeption Machine in the Delivery Office to redeem points.<BR><BR>--SS13 Command"

/obj/item/weapon/paper/army/ustav/officer
	name = "IF YOU ARE AN OFFICER IN THE BUNKER - READ THIS."
	info = "<B>**NOTICE**</B><BR><BR>Smelting operations moved on-station.<BR><BR>Take your unrefined ore to the Redeption Machine in the Delivery Office to redeem points.<BR><BR>--SS13 Command"



// SIGNS


/obj/structure/sign/army/pdr114
	name = "PDR-114"
	desc = "ПДР - Пост Дозиметрической разведки. Номер 114."
	eng_desc = "PDR - Post of dosimetric control. Number 114."
	icon = 'icons/stalker/army_decor.dmi'
	icon_state = "pdr"

/obj/structure/sign/army/pdr115
	name = "PDR-115"
	desc = "ПДР - Пост Дозиметрической разведки. Номер 11... Неважно, ломай дверь!"
	eng_desc = "PDR - Post of dosimetric control. Number 11.. Whatever, time to break in!"
	icon = 'icons/stalker/army_decor.dmi'
	icon_state = "pdrold"

/obj/structure/sign/army/armory
	name = "ARMORY"
	desc = "Guns, guns, guns"
	icon = 'icons/stalker/army_decor.dmi'
	icon_state = "weapon_sign"
	density = 0


/obj/structure/sign/army/weapons
	name = "Armory"
	desc = "Здесь, должно быть, оружейная."
	eng_desc = "Here lies the armory."
	icon = 'icons/stalker/army_decor.dmi'
	icon_state = "weapon_sign"

/obj/structure/sign/army/weaponold
	name = "Armory"
	desc = "Здесь была оружейная."
	eng_desc = "Here lied the armory. Now it's gone. Forever."
	icon = 'icons/stalker/army_decor.dmi'
	icon_state = "oldweapons"

/obj/structure/sign/army/weapons2
	name = "Armory"
	desc = "Здесь должна быть оружейная, но табличка явно самодельная."
	eng_desc = "Here's the armory with one catch: the sign is makeshift."
	icon = 'icons/stalker/army_decor.dmi'
	icon_state = "weaponalt"

/obj/structure/sign/army/weapons3
	name = "Armory"
	desc = "Наконец, нормальная табличка с надписью ''Оружейна&#255''"
	eng_desc = "Oh god, it's the normal ''Armory'' sign!"
	icon = 'icons/stalker/army_decor.dmi'
	icon_state = "weaponry"

/obj/structure/sign/army/sklad
	name = "Sklad"
	desc = "Здесь есть склад. Где-то затерялся украинский прапорщик."
	eng_desc = "Khabar heaven is here."
	icon = 'icons/stalker/army_decor.dmi'
	icon_state = "sklad_sign"

// WOOD WALL

/turf/simulated/wall/stalker/wood
	name = "wall"
	desc = "A huge chunk of wood"
	icon = 'icons/turf/walls/wood_wall.dmi'
	icon_state = "wood"
	walltype = "wood"
	canSmoothWith = list(
	/turf/simulated/wall/stalker/wood
	)

//ITEMS



/obj/item/ak74e
	name = "АК-74Е"
	desc = "АК-74 с экспериментальным внешним видом."
	eng_desc = "AK-74. Experimental version that should not be in this world."
	icon = 'icons/stalker/army_weapons.dmi'
	icon_state = "AK-74E"




// AMMO

/*
/obj/item/ammo/bullet/c762x54r
	name = "7.62 x 54R catridge"
	desc = "A 7.62x54 bullet casing."
	var/caliber = "7.62x54mm"

/obj/item/ammo_casing/c762x54s
	desc = "A 7.62x54 bullet casing."
	caliber = "7.62x54mm"
	projectile_type = /obj/item/projectile/bullet/bullet762x54e

/obj/item/projectile/bullet/bullet762x54e
	damage = 54
	range = 80
	spread = 2
*/

//OUTFITS

/obj/item/clothing/suit/army/ozk
	name = "OZK"
	desc = "OZK"
	eng_desc = "OZK"
//	icon = 'icons/stalker/army_outfits.dmi'
	icon_state = "ozkv1"
//	item_state = "ozkv1"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	armor = list(melee = 20, bullet = 15, laser = 15,burn = 30, bomb = 0, bio = 10, rad = 10, electro = 30, psy = 0)
	durability = 150




/obj/item/clothing/suit/army/bronik
	name = "army armor"
	desc = "Стандартный армейский бронежилет, выдаваемый всем военнослужащим, охран&#255;ющим периметр Зоны. Предоставл&#255;ет неплохую защиту от пуль и холодного оружи&#255;, абсолютно непригоден дл&#255; вылазок вглубь Зоны, так как не имеет почти никакой защиты от воздействи&#255; аномальных полей."
	icon_state = "army_armor1"
//	item_state = "armor"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
//	unacidable = 1
	armor = list(melee = 30, bullet = 40, laser = 10,burn = 25, bomb = 10, bio = 0, rad = 15, electro = 25, psy = 0)
	allowed = list(/obj/item/weapon/gun/projectile,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/device/flashlight/seclite,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/weapon/kitchen/knife/tourist)
	durability = 125
	//МОДИФИКАЦИИ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)