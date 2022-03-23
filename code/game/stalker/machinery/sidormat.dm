var/list/trash_tier_sidormatitems = list()
var/list/low_tier_sidormatitems = list()
var/list/medium_tier_sidormatitems = list()
var/list/high_tier_sidormatitems = list()
var/list/real_sidormat_items = list()

var/list/global_sidormat_list = list(
		///////////////////////////////  ������  /////////////////////////////////////////
	"Handguns" = list(
		///////////////////////////// **���������** /////////////////////////////////////
		new /datum/data/stalker_equipment("PMm",			"���",				/obj/item/weapon/gun/projectile/automatic/pistol/pm,				3000,	ROOKIE),
		new /datum/data/stalker_equipment("TT",				"��",				/obj/item/weapon/gun/projectile/automatic/pistol/tt,				3000,	ROOKIE),
		new /datum/data/stalker_equipment("Fort-12",		"����-12",			/obj/item/weapon/gun/projectile/automatic/pistol/fort12,			6500,	ROOKIE),
		new /datum/data/stalker_equipment("PB1s",			"���1�",			/obj/item/weapon/gun/projectile/automatic/pistol/pb1s,				4500,	ROOKIE),
		new /datum/data/stalker_equipment("SIG-Sauer P220",	"�-220",			/obj/item/weapon/gun/projectile/automatic/pistol/sip,				12500,	ROOKIE),
		new /datum/data/stalker_equipment("Colt M1911",		"�����",			/obj/item/weapon/gun/projectile/automatic/pistol/cora,				9000,	ROOKIE),
		new /datum/data/stalker_equipment("Beretta 92FS",	"�������",			/obj/item/weapon/gun/projectile/automatic/pistol/marta,				9000,	ROOKIE),
		new /datum/data/stalker_equipment("USP-match",		"���-����",			/obj/item/weapon/gun/projectile/automatic/pistol/usp_match, 		16000,	ROOKIE),
		new /datum/data/stalker_equipment("Colt Anaconda",	"����� ��������",	/obj/item/weapon/gun/projectile/revolver/anaconda,					25000,	ROOKIE),
		new /datum/data/stalker_equipment("Desert Eagle",	"ĸ���� ���",		/obj/item/weapon/gun/projectile/automatic/pistol/desert,			30000,	ROOKIE)
		),

	"Automatic Weapons" = list(
		///////////////////////////// **��������, ��** /////////////////////////////////////
		new /datum/data/stalker_equipment("Beretta M38",	"������� �38",		/obj/item/weapon/gun/projectile/automatic/berettam38,				10000,	ROOKIE),
		new /datum/data/stalker_equipment("Kiparis",		"�������",			/obj/item/weapon/gun/projectile/automatic/kiparis,					10000,	ROOKIE),
		new /datum/data/stalker_equipment("PPSh",			"���",				/obj/item/weapon/gun/projectile/automatic/ppsh,						15000,	ROOKIE),
		new /datum/data/stalker_equipment("MP-5",			"��-5",				/obj/item/weapon/gun/projectile/automatic/mp5,						18000,	ROOKIE),
		new /datum/data/stalker_equipment("AK-74S",			"��-74�",			/obj/item/weapon/gun/projectile/automatic/aksu74 ,					24000,	ROOKIE),
		new /datum/data/stalker_equipment("AK-74",			"��-74",			/obj/item/weapon/gun/projectile/automatic/ak74,						30000,	ROOKIE),
		new /datum/data/stalker_equipment("AS-96",			"��-96",			/obj/item/weapon/gun/projectile/automatic/abakan,					40000,	ROOKIE),
		new /datum/data/stalker_equipment("LR-300",			"��-300",			/obj/item/weapon/gun/projectile/automatic/tpc301,					40000,	ROOKIE),
		new /datum/data/stalker_equipment("L85",			"�85",				/obj/item/weapon/gun/projectile/automatic/il86,						40000,	ROOKIE),
		new /datum/data/stalker_equipment("Tunder OTs-14", 	"��-14 �����",		/obj/item/weapon/gun/projectile/automatic/groza,					35000,	ROOKIE),
		new /datum/data/stalker_equipment("AS \"Val\"",		"�� \"���\"",		/obj/item/weapon/gun/projectile/automatic/val,						50000,	ROOKIE),
		new /datum/data/stalker_equipment("SIG SG 550",		"��� �� 550",		/obj/item/weapon/gun/projectile/automatic/sigsg550,					50000,	ROOKIE),
		new /datum/data/stalker_equipment("FN F2000",		"�� �2000",			/obj/item/weapon/gun/projectile/automatic/fnf2000,					65000,	EXPERT),
		new /datum/data/stalker_equipment("GP 37",			"�� 37",			/obj/item/weapon/gun/projectile/automatic/gp37,						75000,	EXPERT),
		new /datum/data/stalker_equipment("FN F2000S",		"�� �2000�",		/obj/item/weapon/gun/projectile/automatic/fnf2000s,					100000,	EXPERT),
		new /datum/data/stalker_equipment("PKM",			"���",				/obj/item/weapon/gun/projectile/automatic/l6_saw/pkm,				200000,	EXPERT)
		),

	"Shotguns" = list(
		/////////////////////////////// **���������** /////////////////////////////////////
		new /datum/data/stalker_equipment("Sawn off",		"�����",			/obj/item/weapon/gun/projectile/revolver/bm16/sawnoff,				6000,	ROOKIE),
		new /datum/data/stalker_equipment("BM-16",			"��-16",			/obj/item/weapon/gun/projectile/revolver/bm16,						10000,	ROOKIE),
		new /datum/data/stalker_equipment("TOZ-34",			"���-34", 			/obj/item/weapon/gun/projectile/revolver/bm16/toz34,				15000,	ROOKIE),
		new /datum/data/stalker_equipment("Ithaca M37",		"����� �37",		/obj/item/weapon/gun/projectile/shotgun/ithaca,						20000,	ROOKIE),
		new /datum/data/stalker_equipment("Wincheaster-1300","���������-1300",	/obj/item/weapon/gun/projectile/shotgun/chaser,						30000,	ROOKIE),
		new /datum/data/stalker_equipment("SPAS-12",		"����-12",			/obj/item/weapon/gun/projectile/shotgun/spsa,						50000,	ROOKIE)
		),

	"Rifles" = list(
		/////////////////////////////// **��������** /////////////////////////////////////
		new /datum/data/stalker_equipment("Lee Enfield",	"�� ������",		/obj/item/weapon/gun/projectile/shotgun/boltaction/enfield,			15000,	ROOKIE),
		new /datum/data/stalker_equipment("Vintorez", 		"��������",			/obj/item/weapon/gun/projectile/automatic/vintorez,					60000,	ROOKIE)
		),

	"Melee Weapons" = list(
		/////////////////////////////// **������** /////////////////////////////////////
		new /datum/data/stalker_equipment("Kitchen Knife",		"�������� ���",				/obj/item/weapon/kitchen/knife,												1500,	ROOKIE),
		new /datum/data/stalker_equipment("Tourist Knife",		"��� �������",				/obj/item/weapon/kitchen/knife/tourist,										4000,	ROOKIE),
		new /datum/data/stalker_equipment("Bayonet",			"����-���",					/obj/item/weapon/kitchen/knife/bayonet,										7000,	ROOKIE),
		new /datum/data/stalker_equipment("Butcher's Cleaver",	"����� �&#x44F;�����",		/obj/item/weapon/kitchen/knife/butcher,										10000,	ROOKIE)
		),

	"Ammo Boxes" = list(
		////////////////////////////////  �������  /////////////////////////////////////////
		new /datum/data/stalker_equipment("9x18mm Box",				"������� 9�18��",							/obj/item/ammo_box/stalker/b9x18,						1500,	ROOKIE),
		new /datum/data/stalker_equipment("9x18mm AP Box",			"������� 9x18�� �����������",				/obj/item/ammo_box/stalker/b9x18P,						2500,	ROOKIE),
		new /datum/data/stalker_equipment("7.62x25mm Box",			"������� 7.62x25��",						/obj/item/ammo_box/stalker/b762x25,						1500,	ROOKIE),
		new /datum/data/stalker_equipment("9x19mm Box",				"������� 9x19��",							/obj/item/ammo_box/stalker/b9x19,						2500,	ROOKIE),
		new /datum/data/stalker_equipment("9x19mm AP Box",			"������� 9x19�� �����������",				/obj/item/ammo_box/stalker/b9x19P,						3750,	ROOKIE),
		new /datum/data/stalker_equipment(".45 ACP Box",			"������� .45 ACP",							/obj/item/ammo_box/stalker/bacp45,						5000,	ROOKIE),
		new /datum/data/stalker_equipment(".45 ACP Hydroshock Box",	"������� .45 ACP Hydroshock",				/obj/item/ammo_box/stalker/bacp45ap,					7500,	ROOKIE),
		new /datum/data/stalker_equipment(".44 Magnum Box",			"������� .44 ������",						/obj/item/ammo_box/stalker/bmag44,						7000,	ROOKIE),
		new /datum/data/stalker_equipment(".44 Magnum FMJ Box",		"������� .44 ������ ���������. ��������",	/obj/item/ammo_box/stalker/bmag44fmj,					10000,	ROOKIE),
		new /datum/data/stalker_equipment("12x70 Buckshot Box",		"������� ����� 12x70",						/obj/item/ammo_box/stalker/b12x70,						3000,	ROOKIE),
		new /datum/data/stalker_equipment("12x70 Slug Box",			"������� ����� 12x70 �����������",			/obj/item/ammo_box/stalker/b12x70P,						4500,	ROOKIE),
		new /datum/data/stalker_equipment("12x70 Dart Box",			"������� 12x70 ������",						/obj/item/ammo_box/stalker/b12x70D,						6000,	ROOKIE),
		new /datum/data/stalker_equipment("5.45x39mm Box",			"������� 5.45�39��",						/obj/item/ammo_box/stalker/b545,						8000,	ROOKIE),
		new /datum/data/stalker_equipment("5.45x39mm AP Box",		"������� 5.45�39�� �����������",			/obj/item/ammo_box/stalker/b545ap,						12000,	ROOKIE),
		new /datum/data/stalker_equipment("5.56x45mm Box",			"������� 5.56x45��",						/obj/item/ammo_box/stalker/b55645,						10000,	ROOKIE),
		new /datum/data/stalker_equipment("5.56x45mm AP Box",		"������� 5.56x45�� �����������",			/obj/item/ammo_box/stalker/b55645ap,					15000,	ROOKIE),
		new /datum/data/stalker_equipment("7.62x51 Box",			"������� 7.62�51",							/obj/item/ammo_box/stalker/b762x51,						8000,	ROOKIE),
		new /datum/data/stalker_equipment("9x39 PAB-9 Box",			"������� 9x39�� ���-9",						/obj/item/ammo_box/stalker/b939,						10000,	ROOKIE)
		),

	"Ammo Magazines and Clips" = list(
		new /datum/data/stalker_equipment("PMm; PB1s Magazine",						"������� � ���; ��1�",			/obj/item/ammo_box/magazine/stalker/m9x18pm,			700,	ROOKIE),
		new /datum/data/stalker_equipment("TT Magazine",							"������� � ��",					/obj/item/ammo_box/magazine/stalker/tt,					600,	ROOKIE),
		new /datum/data/stalker_equipment("Fort-12 Magazine",						"������� � ����-12",			/obj/item/ammo_box/magazine/stalker/m9x18fort,			1000,	ROOKIE),
		new /datum/data/stalker_equipment("Kiparis Magazine",						"������� � ��������",			/obj/item/ammo_box/magazine/stalker/kiparis,			1400,	ROOKIE),
		new /datum/data/stalker_equipment("MP-5 Magazine",							"������� � ��-5",				/obj/item/ammo_box/magazine/stalker/m9x19mp5,			2000,	ROOKIE),
		new /datum/data/stalker_equipment("PPSh Drum",								"������� � ���",				/obj/item/ammo_box/magazine/stalker/ppsh,				5000,	ROOKIE),
		new /datum/data/stalker_equipment("5.45x39mm Magazine",						"������� 5.45x39��",			/obj/item/ammo_box/magazine/stalker/m545,				2250,	ROOKIE),
		new /datum/data/stalker_equipment("5.56x45mm Magazine",						"������� 5.56x45��",			/obj/item/ammo_box/magazine/stalker/m556x45,			3500,	ROOKIE),
		new /datum/data/stalker_equipment("AS \"Val\" Magazine",					"������� � �� \"���\"",			/obj/item/ammo_box/magazine/stalker/sp9x39val,			3000,	ROOKIE),
		new /datum/data/stalker_equipment("Tunder S14 Magazine",					"������� � ��-14 �����",		/obj/item/ammo_box/magazine/stalker/sp9x39groza,		3500,	ROOKIE),
		new /datum/data/stalker_equipment("Vintorez Magazine",						"������� � ���������",			/obj/item/ammo_box/magazine/stalker/sp9x39vint,			3000,	ROOKIE),
		new /datum/data/stalker_equipment("Colt M1911; SIG-Sauer P220 Magazine",	"������� � ������; �-220",		/obj/item/ammo_box/magazine/stalker/sc45,				1400,	ROOKIE),
		new /datum/data/stalker_equipment("Beretta 92FS Magazine",					"������� � ������� 92��",		/obj/item/ammo_box/magazine/stalker/m9x19marta,			1500,	ROOKIE),
		new /datum/data/stalker_equipment("Beretta M38 Magazine",					"������� � ������� �38",		/obj/item/ammo_box/magazine/stalker/berettam38,			1250,	ROOKIE),
		new /datum/data/stalker_equipment("USP-match Magazine",						"������� � ���-����",			/obj/item/ammo_box/magazine/stalker/usp45,				2500,	ROOKIE),
		new /datum/data/stalker_equipment("Desert Eagle Magazine",					"������� � Desert Eagle",		/obj/item/ammo_box/magazine/stalker/desert,				2000,	ROOKIE),
		new /datum/data/stalker_equipment("PKM ammo belt box",						"�������� � ������ � ���",		/obj/item/ammo_box/magazine/stalker/pkm,				20000,	ROOKIE),
		new /datum/data/stalker_equipment("7.62x51 Clip",							"������ 7.62�51",				/obj/item/ammo_box/stalker/cl762x51,					800,	ROOKIE)
		),

	"Suits" = list(
		///////////////////////////////  �����  /////////////////////////////////////////
		new /datum/data/stalker_equipment("Leather jacket",				"�������",							/obj/item/clothing/suit/hooded/kozhanka,					5000,	ROOKIE),
		new /datum/data/stalker_equipment("White leather jacket",		"����&#x44F; �������",				/obj/item/clothing/suit/hooded/kozhanka/white,				5000,	ROOKIE),
		new	/datum/data/stalker_equipment("Bandit jacket",				"���������&#x44F; �������",			/obj/item/clothing/suit/hooded/kozhanka/banditka,			6000,	ROOKIE),
		new	/datum/data/stalker_equipment("Army suit",					"��������� ����������",				/obj/item/clothing/suit/army,								15000,	ROOKIE),
		new /datum/data/stalker_equipment("\"Sunrize\"",				"���������� \"���&#x44F;\"",		/obj/item/clothing/suit/hooded/kombez,						33000,	ROOKIE),
		new /datum/data/stalker_equipment("Merc suit",					"���������� ��������",				/obj/item/clothing/suit/hooded/kombez/mercenary,			25000,	ROOKIE),
		new /datum/data/stalker_equipment("Bandit suit",				"���������� ��������",				/obj/item/clothing/suit/hooded/kombez/kombez_bandit,		25000,	ROOKIE),
		new /datum/data/stalker_equipment("Black trenchcoat",			"Ҹ���� ����",						/obj/item/clothing/suit/hooded/kozhanka/banditka/coat,		12500,	ROOKIE),
		new /datum/data/stalker_equipment("Brown trenchcoat",			"����",								/obj/item/clothing/suit/hooded/kozhanka/banditka/coat/brown,12500,	ROOKIE),
		new /datum/data/stalker_equipment("Berill-5M",					"������-5�",						/obj/item/clothing/suit/berill,								50000,	ROOKIE),
		new /datum/data/stalker_equipment("Wind of Freedom",	    	"����� �������",					/obj/item/clothing/suit/hooded/kombez/veter,				25000,	ROOKIE),
		new /datum/data/stalker_equipment("Guardian of Freedom",		"����� �������",					/obj/item/clothing/suit/strazh,								40000,	ROOKIE),
		new /datum/data/stalker_equipment("PZ-1	",						"��-1",								/obj/item/clothing/suit/hooded/kombez/monolith,				25000,	ROOKIE),
		new /datum/data/stalker_equipment("Monolith scientific suit	",	"������� ���������� ��������",		/obj/item/clothing/suit/hooded/sealed/monolith,				60000,	ROOKIE),
		new /datum/data/stalker_equipment("PS5-M",						"��5-�",							/obj/item/clothing/suit/hooded/kombez/ps5m,					25000,	ROOKIE),
		new /datum/data/stalker_equipment("Heavy merc armor",			"������� ����� ��������",			/obj/item/clothing/suit/assaultmerc,						50000,	ROOKIE),
		new /datum/data/stalker_equipment("PSZ-9D",						"���-9�",							/obj/item/clothing/suit/psz9d,								60000,	ROOKIE),
		new /datum/data/stalker_equipment("SKAT-9M",					"����-9�",							/obj/item/clothing/suit/skat,								75000,	ROOKIE),
		new	/datum/data/stalker_equipment("PSZ-9Md",					"���-9��",							/obj/item/clothing/suit/hooded/sealed/psz9md,				75000,	ROOKIE),
		new	/datum/data/stalker_equipment("SSP-99 Ecologist",			"���-99 ������",					/obj/item/clothing/suit/hooded/sealed/ecolog,				75000,	ROOKIE),
		new	/datum/data/stalker_equipment("SSP-99M Ecologist",			"���-99� ������",					/obj/item/clothing/suit/hooded/sealed/ecologm,				100000,	ROOKIE),
		new	/datum/data/stalker_equipment("SEVA",						"����",								/obj/item/clothing/suit/hooded/sealed/seva,					125000,	ROOKIE),
		new	/datum/data/stalker_equipment("Exoskeleton",				"����������",						/obj/item/clothing/suit/hooded/sealed/exoskelet,			150000,	ROOKIE)
		),

	"Masks and Helmets" = list(
		////////////////////////////	�����, �����	/////////////////////////////////////
		new /datum/data/stalker_equipment("Gasmask",					"����������",					/obj/item/clothing/mask/gas/stalker,							7500,	ROOKIE),
		new /datum/data/stalker_equipment("Merc gasmask",				"���������� ���������",			/obj/item/clothing/mask/gas/stalker/mercenary,					7500,	ROOKIE),
		new /datum/data/stalker_equipment("Steel helmet",				"�������� �����",				/obj/item/clothing/head/steel,									7500,	ROOKIE),
		new /datum/data/stalker_equipment("Light tactical helmet",		"������ ����������� ����",		/obj/item/clothing/head/hardhat/tactical/light,					12500,	ROOKIE),
		new /datum/data/stalker_equipment("Tactical helmet",			"����������� ����",				/obj/item/clothing/head/tacticalhelmet,							25000,	ROOKIE),
		new /datum/data/stalker_equipment("Assault helmet",	    		"��������� ����",				/obj/item/clothing/head/assaultmerc,							30000,	ROOKIE),
		new /datum/data/stalker_equipment("Sphera-M12",			 		"�����-�12",					/obj/item/clothing/head/spheram,								30000,	ROOKIE),
		new /datum/data/stalker_equipment("SKAT-9M (helmet)",			"����-9� (����)",				/obj/item/clothing/head/skathelmet,								40000,	ROOKIE)
		),

	"Medicine" = list(
		///////////////////////////////	�����������	/////////////////////////////////////////
		new /datum/data/stalker_equipment("Medkit",						"�������",							/obj/item/weapon/reagent_containers/pill/stalker/aptechka/civilian,			1000,	ROOKIE),
		new /datum/data/stalker_equipment("Army medkit",				"��������&#x44F; �������",			/obj/item/weapon/reagent_containers/pill/stalker/aptechka/army,				2500,	ROOKIE),
		new /datum/data/stalker_equipment("Scientific medkit",			"������&#x44F; �������",			/obj/item/weapon/reagent_containers/pill/stalker/aptechka/scientific,		5000,	ROOKIE),
		new /datum/data/stalker_equipment("Bandage",					"����",								/obj/item/stack/medical/gauze/bint,											750,	ROOKIE),
		new /datum/data/stalker_equipment("Anti-rad",					"����-��� ���������",				/obj/item/weapon/reagent_containers/hypospray/medipen/stalker/antirad,		3500,	ROOKIE)
		),

	"Food" = list(
		/////////////////////////////////	���	///////////////////////////////////////////
		new /datum/data/stalker_equipment("Canned stew",				"�������",					/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva,				550,	ROOKIE),
		new /datum/data/stalker_equipment("Canned fish",				"������",					/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/shproti,		750,	ROOKIE),
		new /datum/data/stalker_equipment("Vodka \"Kazaki\"",			"����� \"������\"",			/obj/item/weapon/reagent_containers/food/drinks/bottle/vodka/kazaki,			1500,	ROOKIE),
		new /datum/data/stalker_equipment("Energy drink \"NonStop\"",	"��������� \"NonStop\"",	/obj/item/weapon/reagent_containers/food/drinks/soda_cans/energetic,			500,	ROOKIE),
		new /datum/data/stalker_equipment("Snickers",					"�������",					/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/snack/snikers,	300,	ROOKIE),
		new /datum/data/stalker_equipment("Salami",						"�������",					/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,				500,	ROOKIE),
		new /datum/data/stalker_equipment("Bread",						"�����",					/obj/item/weapon/reagent_containers/food/snacks/stalker/baton,					400,	ROOKIE),
		new /datum/data/stalker_equipment("Canned soup",					"���������������� ���",			/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/soup,				900,	ROOKIE),
		new /datum/data/stalker_equipment("Can�ed beans",					"���������������� ����",		/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/bobi,				750,	ROOKIE),
		new /datum/data/stalker_equipment("Canned stew",					"�������",						/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/govyadina2,		900,	ROOKIE),
		new /datum/data/stalker_equipment("Canned fish",					"���������������&#x44F; ����",	/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/fish,				750,	ROOKIE),
		new /datum/data/stalker_equipment("Cream cheese",					"��������� ���",				/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/snack/sirok,		400,	ROOKIE),
		new /datum/data/stalker_equipment("Chocolate bar",					"������ ��������",				/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/snack/chocolate,	600,	ROOKIE),
		new /datum/data/stalker_equipment("Biscuits",						"������",						/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/galets,			400,	ROOKIE),
		new /datum/data/stalker_equipment("Cerreal",						"����",							/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/kasha,				550,	ROOKIE),
		new /datum/data/stalker_equipment("Canned meat",					"�������",						/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/MREkonserva1,		700,	ROOKIE),
		new /datum/data/stalker_equipment("Canned meat",					"�������",						/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/MREkonserva2,		700,	ROOKIE),
		new /datum/data/stalker_equipment("Canned meat with vegetables",	"������� � �������",			/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/MREkonserva3,		850,	ROOKIE),
		new /datum/data/stalker_equipment("Biscuits",						"������",						/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/galets,			400,	ROOKIE),
		),

	"Bacpacks" = list(
		new /datum/data/stalker_equipment("Cheap satchel",					"������&#x44F; �����",		/obj/item/weapon/storage/backpack/satchel/stalker/civilian,					2500,	ROOKIE),
		new /datum/data/stalker_equipment("Cheap backpack",					"������� ������",			/obj/item/weapon/storage/backpack/stalker/civilian,							2500,	ROOKIE),
		new /datum/data/stalker_equipment("Tourist backpack",				"������ �������",			/obj/item/weapon/storage/backpack/stalker/tourist,							6000,	ROOKIE),
		new /datum/data/stalker_equipment("Professional backpack",			"������ �������������",		/obj/item/weapon/storage/backpack/stalker/professional,						11000,	ROOKIE)
		),

	"Misc" = list(
		/////////////////////////////////	������	/////////////////////////////////////////////
		new /datum/data/stalker_equipment/stalker_pda("PDA",					"���",													/obj/item/device/stalker_pda,								4000,	ROOKIE),
		new /datum/data/stalker_equipment("Repair-kit for suits and helmets",	"���. �������� ��&#x44F; ������������� � ������",		/obj/item/device/repair_kit/clothing,						10000,	ROOKIE),
		new /datum/data/stalker_equipment("Repair-kit for guns",				"���. �������� ��&#x44F; �������������� �����&#x44F;",	/obj/item/device/repair_kit/gun,							4000,	ROOKIE),
		new /datum/data/stalker_equipment("Guitar",								"������",												/obj/item/device/instrument/guitar,							3000,	ROOKIE),
		new /datum/data/stalker_equipment("Geiger counter",						"��������",												/obj/item/device/geiger_counter,							3000,	ROOKIE),
		new /datum/data/stalker_equipment("Flashlight",							"�������",												/obj/item/device/flashlight/seclite,						1000,	ROOKIE),
		new /datum/data/stalker_equipment("Big Artifact belt",					"������� ��&#x44F;� ��&#x44F; ����������",				/obj/item/weapon/storage/belt/stalker/artifact_belt,		60000,	ROOKIE),
		new /datum/data/stalker_equipment("Small Artifact belt",				"��������� ��&#x44F;� ��&#x44F; ����������",			/obj/item/weapon/storage/belt/stalker/artifact_belt/small,	25000,	ROOKIE),
		new /datum/data/stalker_equipment("Matches",							"������",												/obj/item/weapon/storage/box/matches,						1000,	ROOKIE),
		new /datum/data/stalker_equipment("Simple lighter",						"����������&#x44F; ���������",							/obj/item/weapon/lighter/greyscale,							3000,	ROOKIE),
		new /datum/data/stalker_equipment("Zippo lighter",						"��������� \"�����\"",									/obj/item/weapon/lighter,									5000,	ROOKIE),
		new /datum/data/stalker_equipment("Cigarettes \"Maxim\"",				"�������� \"Maxim\"",									/obj/item/weapon/storage/fancy/cigarettes/cigpack/maxim,	2500,	ROOKIE),
		new /datum/data/stalker_equipment("Cigars",								"������",												/obj/item/weapon/storage/fancy/cigarettes/cigars,			10000,	ROOKIE),
		new /datum/data/stalker_equipment("50 RU",				"50 RU",							/obj/item/stack/spacecash/c50,						50,		ROOKIE,	sale_price = 50),
		new /datum/data/stalker_equipment("100 RU",				"100 RU",							/obj/item/stack/spacecash/c100,						100,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("500 RU",				"500 RU",							/obj/item/stack/spacecash/c500,						500,	ROOKIE,	sale_price = 500),
		new /datum/data/stalker_equipment("1000 RU",			"1000 RU",							/obj/item/stack/spacecash/c1000,					1000,	ROOKIE,	sale_price = 1000),
		new /datum/data/stalker_equipment("5000 RU",			"5000 RU",							/obj/item/stack/spacecash/c5000,					500000,	ROOKIE,	sale_price = 5000)
		),

	"Clothing" = list(
		new /datum/data/stalker_equipment("Under",								"�������� ������",										/obj/item/clothing/under/color/switer,						1000,	ROOKIE),
		new /datum/data/stalker_equipment("Dark under",							"Ҹ���� �������� ������",								/obj/item/clothing/under/color/switer/dark,					1500,	ROOKIE),
		new /datum/data/stalker_equipment("Telnyashka",							"�����&#x44F;���",										/obj/item/clothing/under/color/switer/lolg,					1500,	ROOKIE),
		new /datum/data/stalker_equipment("Tracksuit",							"���������� ������",									/obj/item/clothing/under/color/switer/tracksuit,			1500,	ROOKIE),
		new /datum/data/stalker_equipment("Worn out army boots",				"���������� �����",										/obj/item/clothing/shoes/jackboots/warm,					800,	ROOKIE),
		new /datum/data/stalker_equipment("Fingerless gloves",					"�������� ��� �������",									/obj/item/clothing/gloves/fingerless,						600,	ROOKIE),
		new /datum/data/stalker_equipment("Balaclava",							"���������",											/obj/item/clothing/mask/balaclava,							700,	ROOKIE)
		),

	"Detectors" = list(
		/////////////////////////////////	���������	///////////////////////////////////////////
		new /datum/data/stalker_equipment("Blink", 		"������",					/obj/item/device/detector/blink,				4000,	ROOKIE),
		new /datum/data/stalker_equipment("Bear",		"�������",					/obj/item/device/detector/bear,					12000,	EXPERIENCED),
		new /datum/data/stalker_equipment("Veles",		"�����",					/obj/item/device/detector/veles,				36000,	VETERAN),
		),

	"Attachments" = list(
		/////////////////////////////////	����������	///////////////////////////////////////////
		new /datum/data/stalker_equipment("Universl suppressor",	"������������� ���������",					/obj/item/weapon/attachment/suppressor,				2000,	ROOKIE),
		new /datum/data/stalker_equipment("SUSAT",					"�����",									/obj/item/weapon/attachment/scope/SUSAT,			8000,	EXPERIENCED),
		new /datum/data/stalker_equipment("PSU-1",					"���-1",									/obj/item/weapon/attachment/scope/PS/U1,			6000,	EXPERIENCED),
		new /datum/data/stalker_equipment("PSO-1",					"���-1",									/obj/item/weapon/attachment/scope/PS/O1,			10000,	EXPERIENCED),
		new /datum/data/stalker_equipment("Rifle/Shotgun scope",	"������ ��&#x44F; ��������/����������",		/obj/item/weapon/attachment/scope/rifle,			8000,	ROOKIE)
		///////////////////////////////////////////////////////////////////////////////////////////
		),

	"Unbuyable" = list(
		new /datum/data/stalker_equipment("Canned soup",					"���������������� ���",			/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/soup,				900,	ROOKIE),
		new /datum/data/stalker_equipment("Can�ed beans",					"���������������� ����",		/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/bobi,				750,	ROOKIE),
		new /datum/data/stalker_equipment("Canned stew",					"�������",						/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/govyadina2,		900,	ROOKIE),
		new /datum/data/stalker_equipment("Canned fish",					"���������������&#x44F; ����",	/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/fish,				750,	ROOKIE),
		new /datum/data/stalker_equipment("Cream cheese",					"��������� ���",				/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/snack/sirok,		400,	ROOKIE),
		new /datum/data/stalker_equipment("Chocolate bar",					"������ ��������",				/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/snack/chocolate,	600,	ROOKIE),
		new /datum/data/stalker_equipment("Biscuits",						"������",						/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/galets,			400,	ROOKIE),
		new /datum/data/stalker_equipment("Cerreal",						"����",							/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/kasha,				550,	ROOKIE),
		new /datum/data/stalker_equipment("Canned meat",					"�������",						/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/MREkonserva1,		700,	ROOKIE),
		new /datum/data/stalker_equipment("Canned meat",					"�������",						/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/MREkonserva2,		700,	ROOKIE),
		new /datum/data/stalker_equipment("Canned meat with vegetables",	"������� � �������",			/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/MREkonserva3,		850,	ROOKIE),
		new /datum/data/stalker_equipment("Biscuits",						"������",						/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/galets,			400,	ROOKIE),
		/////////////////////////////////	��� � ��������	///////////////////////////////////////////
		new /datum/data/stalker_equipment("����� �����",					"����� �����",			/obj/item/weapon/stalker/loot/dog_tail,			2500,		ROOKIE, sale_price = 1250),
		new /datum/data/stalker_equipment("������ ����",					"������ ����",			/obj/item/weapon/stalker/loot/flesh_eye,		1800,		ROOKIE, sale_price = 900),
		new /datum/data/stalker_equipment("������� ���",					"������� ���",			/obj/item/weapon/stalker/loot/boar_leg,			6000,		ROOKIE, sale_price = 3000),
		new /datum/data/stalker_equipment("C������ ���",					"�������� ���",			/obj/item/weapon/stalker/loot/snork_leg,		7000,		ROOKIE, sale_price = 3500),
		new /datum/data/stalker_equipment("���������� �������",				"���������� �������",	/obj/item/weapon/stalker/loot/bloodsucker,		16000,		ROOKIE, sale_price = 8000),
		new /datum/data/stalker_equipment("����������� �����",				"����������� �����",	/obj/item/weapon/stalker/loot/pseudo_tail,		8000,		ROOKIE, sale_price = 4000),
		new /datum/data/stalker_equipment("������������ ����",				"������������ ����",	/obj/item/weapon/stalker/loot/controller_brain,	40000,		ROOKIE, sale_price = 20000),
		/////////////////////////////////	���������	///////////////////////////////////////////
		new /datum/data/stalker_equipment("������",				"������",							/obj/item/weapon/artifact/meduza,					5000,	ROOKIE,	sale_price = 2500),
		new /datum/data/stalker_equipment("�������� ������",	"�������� ������",					/obj/item/weapon/artifact/stoneflower,				10000,	ROOKIE,	sale_price = 5000),
		new /datum/data/stalker_equipment("������ ������",		"������ ������",					/obj/item/weapon/artifact/nightstar,				30000,	ROOKIE,	sale_price = 15000),
		new /datum/data/stalker_equipment("����",				"����",								/obj/item/weapon/artifact/soul,						80000,	ROOKIE,	sale_price = 35000),
		///////////////////////////////////////////////////////////////////////////////////////////
		new /datum/data/stalker_equipment("�������",			"�������",							/obj/item/weapon/artifact/flash,					6000,	ROOKIE,	sale_price = 3000),
		new /datum/data/stalker_equipment("������ ����",		"������ ����",						/obj/item/weapon/artifact/moonlight,				12000,	ROOKIE,	sale_price = 6000),
		new /datum/data/stalker_equipment("��������",			"��������",							/obj/item/weapon/artifact/pustishka,				40000,	ROOKIE,	sale_price = 20000),
		new /datum/data/stalker_equipment("���������",			"���������",						/obj/item/weapon/artifact/battery,					70000,	ROOKIE,	sale_price = 35000),
		///////////////////////////////////////////////////////////////////////////////////////////
		new /datum/data/stalker_equipment("����&#x44F;",		"����&#x44F;",						/obj/item/weapon/artifact/droplet,					7000,	ROOKIE,	sale_price = 3500),
		new /datum/data/stalker_equipment("�������� ���",		"�������� ���",						/obj/item/weapon/artifact/fireball,					15000,	ROOKIE,	sale_price = 7500),
		new /datum/data/stalker_equipment("��������",			"��������",							/obj/item/weapon/artifact/crystal,					60000,	ROOKIE,	sale_price = 30000),
		new /datum/data/stalker_equipment("������ ����",		"������ ����",						/obj/item/weapon/artifact/maminibusi,				80000,	ROOKIE,	sale_price = 40000),
		///////////////////////////////////////////////////////////////////////////////////////////
		new /datum/data/stalker_equipment("����� ����&#x44F;",	"����� ����&#x44F;",				/obj/item/weapon/artifact/stone_blood,				4000,	ROOKIE,	sale_price = 2000),
		new /datum/data/stalker_equipment("������",				"������",							/obj/item/weapon/artifact/bubble,					12000,	ROOKIE,	sale_price = 6000),
		new /datum/data/stalker_equipment("�����",				"�����",							/obj/item/weapon/artifact/mica,						30000,	ROOKIE,	sale_price = 15000),
		new /datum/data/stalker_equipment("�����&#x44F;�",		"�����&#x44F;�",					/obj/item/weapon/artifact/firefly,					60000,	ROOKIE,	sale_price = 30000),
		/////////////////////////////////	�����	//////////////////////////////////////////////
		new /datum/data/stalker_equipment("Konserva",			"��������",							/obj/item/trash/konserva,							400,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"��������",							/obj/item/trash/konserva/MREkonserva1,				200,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"��������",							/obj/item/trash/konserva/MREkonserva2,				200,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"��������",							/obj/item/trash/konserva/MREkonserva3,				200,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"��������",							/obj/item/trash/konserva/bobi,						400,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"��������",							/obj/item/trash/konserva/fish,						500,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"��������",							/obj/item/trash/konserva/govyadina,					400,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"��������",							/obj/item/trash/konserva/shproti,					600,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"��������",							/obj/item/trash/konserva/soup,						500,	ROOKIE),
		///////////////////////////////////////////////////////////////////////////////////////////
		new /datum/data/stalker_equipment("50 RU",				"50 RU",							/obj/item/stack/spacecash/c50,						50,		ROOKIE,	sale_price = 50),
		new /datum/data/stalker_equipment("100 RU",				"100 RU",							/obj/item/stack/spacecash/c100,						100,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("500 RU",				"500 RU",							/obj/item/stack/spacecash/c500,						500,	ROOKIE,	sale_price = 500),
		new /datum/data/stalker_equipment("1000 RU",			"1000 RU",							/obj/item/stack/spacecash/c1000,					1000,	ROOKIE,	sale_price = 1000),
		new /datum/data/stalker_equipment("5000 RU",			"5000 RU",							/obj/item/stack/spacecash/c5000,					500000,	ROOKIE,	sale_price = 500000)
		)
	)

/obj/machinery/stalker
	icon = 'icons/stalker/decor.dmi'

/obj/machinery/stalker/sidormat
	name = "SYCHEMAT"
	desc = "An equipment vendor for beginning stalkers."
	icon_state = "radio"
	density = 1
	anchored = 1
	var/itemloc = null
	var/itemloc2 = null
	var/balance = 0
	var/rating = 0
	var/switches = BUY_STUFF
	var/real_assorment = list()
	var/list/special_factions = list("Loners", "Bandits")
	var/path_ending = null
	//Faction Locker
	var/obj/item/device/assembly/control/door_device = null

/datum/data/stalker_equipment
	//var/name = "generic"
	var/name_ru = "generic"
	var/equipment_path = null
	var/cost = 0
	var/rating = 0
	var/faction = "Everyone"
	var/sale_price = 0
	var/assortment_level = 0

/datum/data/stalker_equipment/New(name, name_ru, path, cost, rating, faction = "Everyone", sale_price = 0, assortment_level = 0)
	src.name = name
	src.name_ru = name_ru
	src.equipment_path = path
	src.cost = cost
	src.rating = rating
	src.faction = faction
	if(sale_price)
		src.sale_price = sale_price
	else
		src.sale_price = cost/2
	src.assortment_level = assortment_level
	switch(cost)
		if(0 to TRASH_TIER_COST)
			trash_tier_sidormatitems += src

		if(0 to LOW_TIER_COST)
			low_tier_sidormatitems += src

		if(0 to MEDIUM_TIER_COST)
			medium_tier_sidormatitems += src

		if(LOW_TIER_COST to HIGH_TIER_COST)
			high_tier_sidormatitems += src
	real_sidormat_items += src

/datum/data/stalker_equipment/proc/GetCost()
	return src.sale_price

/datum/data/stalker_equipment/stalker_pda/GetCost(var/obj/item/device/stalker_pda/KPK)
	var/cost_ = src.sale_price
	if(KPK.owner && (KPK.owner.stat == DEAD))
		var/rank_ = Clamp(KPK.profile.fields["rating"], ROOKIE, ZONE_LEGEND)
		cost_ += GetCostBasedOnReputation(KPK.profile.fields["reputation"])
		cost_ += rank_*2
	return cost_

/proc/GetCostBasedOnReputation(var/rep_)
	switch(rep_)
		if(AMAZING to INFINITY)
			return ((NEUTRAL - rep_) * 20)
		if(VERYGOOD to AMAZING)
			return ((NEUTRAL - rep_) * 10)
		if(GOOD to VERYGOOD)
			return ((NEUTRAL - rep_) * 5)
		if(BAD to GOOD)
			return 0
		if(VERYBAD to BAD)
			return ((NEUTRAL - rep_) * 5)
		if(DISGUSTING to VERYBAD)
			return ((NEUTRAL - rep_) * 10)
		if(-INFINITY to DISGUSTING)
			return ((NEUTRAL - rep_) * 20)

/obj/machinery/stalker/sidormat/New()
	itemloc = locate(x - 1, y, z)
	itemloc2 = locate(x + 1, y, z)

	sleep(10)

	if(path_ending && !door_device)
		door_device = new /obj/item/device/assembly/control(src)
		door_device.id = path_ending

/obj/machinery/stalker/sidormat/attack_hand(mob/user)
	balance = 0
	if(..())
		return

	if(!ishuman(user))
		say("You are not a human.")
		return

	var/mob/living/carbon/human/H = user

	interact(H)


/obj/machinery/stalker/sidormat/interact(mob/living/carbon/human/H)

	if(!istype(H.wear_id, /obj/item/device/stalker_pda))
		say("Put on your KPK.")
		return

	//find_record("sid", H.sid, data_core.stalkers)
	var/obj/item/device/stalker_pda/KPK = H.wear_id
	var/datum/data/record/sk = KPK.profile

	if(!sk || !KPK.owner)
		say("Activate your KPK profile.")
		return

	if(KPK.owner != H)
		say("No access.")
		return

	H.set_machine(src)
	balance = sk.fields["money"]
	rating = sk.fields["rating"]

	var/dat
	if(H.client.prefs.chat_toggles & CHAT_LANGUAGE)

	///////////////////////////////////////////////////////////���������� ���������///////////////////////////////////////////////////////////////////////

		dat +="<div class='statusDisplay'>"
		dat += "Balance: [num2text(balance, 8)] RU<br>"
		dat += "<br><br>INSTRUCTION: Put habar for sale on the <b>left</b> table.<br>" // �������� ������ � ��������� ���� - �� <b>������</b>.
		if(switches & BUY_STUFF)
			dat +="<A href='?src=\ref[src];choice=take'><b>Sell habar</b></A><br>"
		if(door_device && sk.fields["degree"])
			dat +="<A href='?src=\ref[src];basement_toggle=1'><b>Toggle basement door</b></A><br>"
		dat += "</div>"
		dat += "<div class='lenta_scroll'>"
		dat += "<BR><table border='0' width='400'>" //<b>Item list:</b>
		for(var/L in global_sidormat_list)
			if(L == "Unbuyable" && !(switches & SELL_UNBUYABLE))
				continue
			dat += "<tr><td><center><big><b>[L]</b></big></center></td><td></td><td></td></tr>"
			for(var/datum/data/stalker_equipment/prize in global_sidormat_list[L])
				if((sk.fields["faction_s"] == prize.faction && ((sk.fields["faction_s"] in special_factions) || (switches & SHOW_FACTION_EQUIPMENT))) || prize.faction == "Everyone")
					//if(rating >= prize.rating)
					if(get_assortment_level(H) >= prize.assortment_level)
						dat += "<tr><td>[prize.name]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>Buy</A></td></tr>"

		dat += "</table>"
		dat += "</div>"

	else

		///////////////////////////////////////////////////////////������� ���������///////////////////////////////////////////////////////////////////////

		dat +="<div class='statusDisplay'>"
		dat += "�� �����: [num2text(balance, 8)] RU<br>"
		dat += "<br><br>����������: ����� ���������� - �� <b>�����</b> �����.<br>" //�������� ������ � ��������� ���� - �� <b>������</b>.
		if(switches & BUY_STUFF)
			dat +="<A href='?src=\ref[src];choice=take'><b>����� �����</b></A><br>"
		if(door_device && sk.fields["degree"])
			dat +="<A href='?src=\ref[src];basement_toggle=1'><b>�������/������� ���������</b></A><br>"
		dat += "</div>"
		dat += "<div class='lenta_scroll'>"
		dat += "<BR><table border='0' width='400'>" //<b>������ ���������:</b>
		for(var/L in global_sidormat_list)
			if(L == "Unbuyable" && !(switches & SELL_UNBUYABLE))
				continue
			dat += "<tr><td><center><b>[L]</b></center></td><td></td><td></td></tr>"
			for(var/datum/data/stalker_equipment/prize in global_sidormat_list[L])
				if((sk.fields["faction_s"] == prize.faction && ((sk.fields["faction_s"] in special_factions) || (switches & SHOW_FACTION_EQUIPMENT))) || prize.faction == "Everyone")
					//if(rating >= prize.rating)
					if(get_assortment_level(H) >= prize.assortment_level)
						dat += "<tr><td>[prize.name_ru]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>������</A></td></tr>"
		dat += "</table>"
		dat += "</div>"

	var/datum/browser/popup = new(H, "miningvendor", "SIDORMAT 3000", 450, 700)
	popup.set_content(dat)
	popup.open()
	return

/proc/get_assortment_level(var/mob/living/carbon/human/owner)
	var/datum/data/record/sk = find_record("sid", owner.sid, data_core.stalkers)
	var/assortment_level = 0


	for(var/obj/machinery/stalker/sidorpoint/cp in cps)
		if(cp.controlled_by == sk.fields["faction_s"] && cp.control_percent == 100)
			assortment_level++

	return assortment_level

/obj/machinery/stalker/sidormat/Topic(href, href_list)
	if(..())
		return

	var/mob/living/carbon/human/H = usr

	if(!istype(H.wear_id, /obj/item/device/stalker_pda))
		say("Put on your KPK.")
		updateUsrDialog()
		return

	var/datum/data/record/sk = find_record("sid", H.sid, data_core.stalkers)
	var/obj/item/device/stalker_pda/KPK = H.wear_id


	if(!sk)
		say("Activate your KPK profile.")
		updateUsrDialog()
		return

	if(!KPK.owner || (KPK.owner != H))
		say("No access.")
		updateUsrDialog()
		return

	if(href_list["choice"])
		if(href_list["choice"] == "take")
			SellItems()

	if(href_list["purchase"])
		var/datum/data/stalker_equipment/prize = locate(href_list["purchase"])

		if (!prize)
			updateUsrDialog()
			return

		if(prize.cost > sk.fields["money"])
			say("You don't have enough money to buy [prize.name].")
			updateUsrDialog()
			return

		sk.fields["money"] -= prize.cost
		balance = sk.fields["money"]
		//PoolOrNew(prize.equipment_path, itemloc2)
		new prize.equipment_path(itemloc2)

	if(href_list["basement_toggle"])
		door_device.pulsed()

	//updateUsrDialog()
	return


/obj/machinery/stalker/sidormat/proc/SellItems()
	var/mob/living/carbon/human/H = usr
	if(!istype(H.wear_id, /obj/item/device/stalker_pda))
		say("Put on your KPK.")
		return

	var/datum/data/record/sk = find_record("sid", H.sid, data_core.stalkers)
	var/obj/item/device/stalker_pda/KPK = H.wear_id

	if(!sk)
		say("Activate your profile in KPK.")
		return

	if(KPK.sid != H.sid)
		say("No access.")
		return

	var/list/atom/movable/ontable = GetItemsOnTable()
	var/total_cost = GetOnTableCost(ontable)

	if(total_cost < 100)
		say("Habar was not sold.")

	for(var/atom/movable/I in ontable)
		if(I.loc != itemloc)
			continue

		sk.fields["money"] += GetCost(I)
		balance = sk.fields["money"]

		say("[I] was sold for [GetCost(I)].")

		PlaceInPool(I)
		CHECK_TICK

	if(total_cost)
		say("<b>Habar was successfully sold for [total_cost].</b>")

	updateUsrDialog()
	return

/obj/machinery/stalker/sidormat/proc/GetItemsOnTable()
	var/list/ontable = list()
	for(var/atom/movable/AM in itemloc)
		if(GetCost(AM) <= 0)
			continue

		if(istype(AM, /obj/item/clothing))
			var/obj/item/clothing/C = AM
			if((C.durability / initial(C.durability)) * 100 < 80)
				say("[AM] is too broken for sale.")
				continue

		if(istype(AM, /obj/item/weapon/storage/backpack) && AM.contents.len)
			say("Empty [AM] before selling.")
			continue

		if(istype(AM, /obj/item/ammo_box))
			var/obj/item/ammo_box/AB = AM
			if(AB.stored_ammo.len < AB.max_ammo)
				say("Fill [AB] before selling.")
				continue

		//if(istype(AM, /obj/item/weapon/reagent_containers))
		//	say("[AM] can't be sold!")
		//	continue

		ontable += AM

	return ontable

/obj/machinery/stalker/sidormat/proc/GetOnTableCost(var/list/ontable)
	//var/list/ontable = GetItemsOnTable()
	var/total_cost = 0

	for(var/atom/movable/item_on_table in ontable)
		var/cost = GetCost(item_on_table)
		if(cost)
			total_cost += cost
	return total_cost

/obj/machinery/stalker/sidormat/proc/GetCost(var/obj/item/I)
	for(var/datum/data/stalker_equipment/se in real_sidormat_items)
		if(I.type == se.equipment_path)
			return se.GetCost(I)
	return 0

/obj/machinery/stalker/sidormat/ex_act(severity, target)
	return