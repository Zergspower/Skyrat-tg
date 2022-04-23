/datum/job/internal_affairs_agent
	title = JOB_INTERNAL_AFFAIRS_AGENT
	description = "Protect heads of staff, get your fancy gun stolen, cry as the captain touches the supermatter."
	auto_deadmin_role_flags = DEADMIN_POSITION_SECURITY
	department_head = list(JOB_INTERNAL_AFFAIRS_AGENT)
	faction = FACTION_STATION
	total_positions = 1
	spawn_positions = 1
	supervisors = "Magistrate and the Nanotrasen Consultant"
	selection_color = "#c6ffe0"
	minimal_player_age = 7
	exp_requirements = 2400
	exp_required_type = EXP_TYPE_CREW
	exp_required_type_department = EXP_TYPE_COMMAND
	exp_granted_type = EXP_TYPE_CREW

	paycheck = PAYCHECK_HARD
	paycheck_department = ACCOUNT_CMD

	outfit = /datum/outfit/job/blueshield
	plasmaman_outfit = /datum/outfit/plasmaman/blueshield
	display_order = JOB_DISPLAY_ORDER_BLUESHIELD
	bounty_types = CIV_JOB_SEC

	department_for_prefs = /datum/job_department/captain

	departments_list = list(
		/datum/job_department/central_command,
		/datum/job_department/command,
	)
	liver_traits = list(TRAIT_PRETENDER_ROYAL_METABOLISM)

	family_heirlooms = list(/obj/item/bedsheet/captain, /obj/item/clothing/head/beret/blueshield)

	mail_goodies = list(
		/obj/item/storage/fancy/cigarettes/cigars/havana = 10,
		/obj/item/stack/spacecash/c500 = 3,
		/obj/item/disk/nuclear/fake/obvious = 2,
		/obj/item/clothing/head/collectable/captain = 4,
		/obj/projectile/bullet/b460 = 1
	)

	veteran_only = TRUE
	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS

/datum/outfit/job/internal_affairs_agent
	name = "Internal Affairs Agent"
	jobtype = /datum/job/internal_affairs_agent
	uniform = /obj/item/clothing/under/rank/security/blueshield
	suit = /obj/item/clothing/suit/armor/vest/blueshield
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	id = /obj/item/card/id/advanced/centcom
	shoes = /obj/item/clothing/shoes/jackboots
	ears = /obj/item/radio/headset/headset_bs/alt
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses
	backpack_contents = list(
		/obj/item/storage/box/gunset/blueshield = 1,
		/obj/item/melee/baton/security/loaded = 1,)
	implants = list(/obj/item/implant/mindshield)
	backpack = /obj/item/storage/backpack/Legal
	satchel = /obj/item/storage/backpack/satchel/Legal
	duffelbag = /obj/item/storage/backpack/duffel/Legal
	head = /obj/item/clothing/head/beret/blueshield
	box = /obj/item/storage/box/survival/security
	belt = /obj/item/modular_computer/tablet/pda/internal_affairs_agent

	id_trim = /datum/id_trim/job/internal_affairs_agent

/datum/outfit/plasmaman/lawyer
	name = "Internal Affairs Plasmaman"

	head = /obj/item/clothing/head/helmet/space/plasmaman/lawyer
	uniform = /obj/item/clothing/under/plasmaman/lawyer
