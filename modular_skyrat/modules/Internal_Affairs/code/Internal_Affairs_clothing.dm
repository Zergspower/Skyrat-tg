//Blueshield
/obj/item/clothing/under/rank/security/blueshield
	desc = "An expensive designer shirt with snazzy suit pants, complete with a blue tie."
	name = "blueshield's suit"
	icon = 'modular_skyrat/master_files/icons/obj/clothing/uniforms.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/uniform.dmi'
	worn_icon_digi = 'modular_skyrat/master_files/icons/mob/clothing/uniform_digi.dmi'
	icon_state = "blueshield"
	armor = list("melee" = 10, "bullet" = 5, "laser" = 5,"energy" = 10, "bomb" =10, "bio" = 0, "fire" = 50, "acid" = 50)
	can_adjust = FALSE
	sensor_mode = SENSOR_COORDS
	random_sensor = FALSE

/obj/item/clothing/under/rank/security/blueshield/turtleneck
	name = "blueshield's skivvy"
	desc = "A cozier alternative to the normal blueshield's suit. It's made out of an expensive, all-natural wool."
	icon_state = "bs_turtleneck"
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY

/obj/item/clothing/under/rank/security/blueshield/turtleneck/skirt
	name = "blueshield's skirtleneck"
	desc = "An alternative to the normal turtleneck with the pants replaced with a high-cut skirt. It's still made out of an expensive, all-natural wool."
	icon_state = "bs_skirtleneck"

/obj/item/clothing/under/rank/security/blueshield/skirt
	desc = "A \"tactical\" skirt seemingly outfitted in Nanotrasen's standard corporate-chic."
	name = "blueshield's skirt"
	icon_state = "blueshieldskirt"
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY

/obj/item/clothing/gloves/tackler/combat/insulated/blueshield
    name = "combat gloves"
    desc = "These tactical gloves appear to be unique, made out of double woven durathread fibers which make it fireproof as well as acid resistant"
    icon = 'modular_skyrat/master_files/icons/obj/clothing/gloves.dmi'
    icon_state = "combat"
    worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/hands.dmi'
    resistance_flags = FIRE_PROOF |  ACID_PROOF
    armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "fire" = 100, "acid" = 100)

/obj/item/radio/headset/headset_bs
	name = "\proper the blueshield's headset"
	icon = 'modular_skyrat/modules/Internal_Affairs/icons/radio.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/ears.dmi'
	icon_state = "bshield_headset"
	keyslot = new /obj/item/encryptionkey/heads/blueshield
	keyslot2 = new /obj/item/encryptionkey/headset_cent

/obj/item/radio/headset/headset_bs/alt
	icon_state = "iaa_headset_alt"

/obj/item/radio/headset/headset_bs/alt/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(ITEM_SLOT_EARS))


/obj/item/clothing/head/helmet/space/plasmaman/blueshield
	name = "Legal  envirosuit helmet"
	desc = "A plasmaman containment helmet designed for certified blueshields, who's job guarding heads should not include self-combustion... most of the time."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/head/plasmaman_hats.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/head/plasmaman_head.dmi'
	icon_state = "bs_envirohelm"
	armor = list("melee" = 30, "bullet" = 20, "laser" = 20,"energy" = 20, "bomb" = 25, "bio" = 100, "fire" = 100, "acid" = 90)

/obj/item/clothing/under/plasmaman/blueshield
	name = "Legal envirosuit"
	desc = "A plasmaman containment suit designed for certified blueshields, offering a limited amount of extra protection."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/under/plasmaman.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/under/plasmaman.dmi'
	icon_state = "IAA_envirosuit"
	armor = list("melee" = 10, "bullet" = 0, "laser" = 10,"energy" = 0, "bomb" = 5, "bio" = 100, "fire" = 95, "acid" = 95)
	sensor_mode = SENSOR_COORDS
	random_sensor = FALSE

/obj/item/storage/backpack/internal_affairs_agent
	name = "Legal backpack"
	desc = "A robust backpack for the fun police."
	icon = 'modular_skyrat/modules/Internal_Affairs/icons/blueshieldpacks.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/back.dmi'
	icon_state = "legalpack"
	inhand_icon_state = "legalpack"

/obj/item/storage/backpack/satchel/Legal
	name = "Legal satchel"
	desc = "A robust satchel for the fun police"
	icon = 'modular_skyrat/modules/Internal_Affairs/icons/legalpacks.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/back.dmi'
	icon_state = "satchel-legal"
	inhand_icon_state = "satchel-legal"

/obj/item/storage/backpack/duffel/Legal
	name = "Legal duffelbag"
	desc = "A robust duffelbag for the fun police."
	icon = 'modular_skyrat/modules/Internal_Affairs/icons/blueshieldpacks.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/back.dmi'
	icon_state = "duffel-legal"
	inhand_icon_state = "duffel-legal"
