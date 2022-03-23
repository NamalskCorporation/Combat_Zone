/client/proc/changetitlescreen(var/title in icon_states('icons/misc/sand_room.dmi'))
	set category = "Admin"
	set name = "TSChange"
	set desc = "Changes title screen to whatever."


//	var/title = input("Input what title you want: 1 to 4. 1 is default","title", "1") as text|null in list("1", "2", "3", "4")


	var/msg = "[key_name(src)] has modified titlescreen to [title]" //[key_name(src)] to [title]
	log_admin(msg, 0)
	message_admins(msg, 0)
	SSblackbox.record_feedback("tally", "admin_verb", 1, "[key_name(src)] Changetitlescreen to [title] ") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

	for(var/turf/closed/indestructible/splashscreen/O)
		O.icon_state = title


//ARMY change titlescreen