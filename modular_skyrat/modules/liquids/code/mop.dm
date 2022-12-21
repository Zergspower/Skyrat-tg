/obj/item/mop/Initialize(mapload)
	. = ..()

	AddComponent(/datum/component/liquids_interaction, TYPE_PROC_REF(/obj/item/mop, attack_on_liquids_turf))

/obj/item/mop/should_clean(datum/cleaning_source, atom/atom_to_clean, mob/living/cleaner)
	var/turf/turf_to_clean = atom_to_clean

	// Disable normal cleaning if there are liquids.
	if(isturf(atom_to_clean) && turf_to_clean.liquids)
		return FALSE

	return ..()

/**
 * The procedure for remove liquids from turf
 *
 * The object is called from liquid_interaction element.
 * The procedure check range of mop owner and tile, then check reagents in mop, if reagents volume < mop capacity - liquids absorbs from tile
 * In another way, input a chat about mop capacity
 * Arguments:
 * * the_mop - Mop used to absorb liquids
 * * tile - On which tile mop try absorb liquids
 * * user - Who try to absorb liquids with mop
 * * liquids - Liquids which user try to absorb with the_mop
 */
/obj/item/mop/proc/attack_on_liquids_turf(obj/item/mop/the_mop, turf/tile, mob/user, obj/effect/abstract/liquid_turf/liquids)
	if(!in_range(user, tile))
		return FALSE
	var/free_space = the_mop.reagents.maximum_volume - the_mop.reagents.total_volume
	if(free_space <= 0)
		to_chat(user, span_warning("Your mop can't absorb any more!"))
		return TRUE
	var/datum/reagents/tempr = liquids.take_reagents_flat(free_space)
	tempr.trans_to(the_mop.reagents, tempr.total_volume)
	to_chat(user, span_notice("You soak the mop with some liquids."))
	qdel(tempr)
	user.changeNext_move(CLICK_CD_MELEE)
	return TRUE
