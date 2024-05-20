/obj/structure/slop_mannequin
	name = "Mannequin"
	desc = "A mannequin that you can change the direction of or dress."
	icon = 'icons/roguetown/misc/structure.dmi'
	icon_state = "mannequin"
	density = TRUE
	anchored = FALSE
	var/list/held_items = list()

/obj/structure/slop_mannequin/attack_hand(mob/user)
	if(!ishuman(user))
		return

	var/mob/living/carbon/human/H = user
	var/chosen_action = input(user, "What action will I take?", "Mannequin") as null|anything in list("Adjust Direction", "Remove Item")
	switch(chosen_action)
		if("Adjust Direction")
			var/chosen_direction = input(user, "What direction will I make it face?", "Mannequin") as null|anything in list("NORTH", "SOUTH", "EAST", "WEST")
			src.dir = text2dir(chosen_direction)
		if("Remove Item")
			

/obj/structure/slop_mannequin/attackby(obj/item/W, mob/user, params)
	if(!user.cmode) // If they are on cmode they will just attack it i guess
		var/chosen_action = input(user, "Select an action") as null|anything list("Put on mannequin body", "Put in mannequin hand")
		if(istype(W, /obj/item/clothing))
		
		else
			var/chosen_action = input(user, "Which hand to put this object into?") as null|anything list("Left", "Right")

	..()

/obj/structure/slop_mannequin/proc/rebuild_overlays()
