	object_const_def ; object_event constants

FedHideout1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

FedHideout1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 14, 13, CELADON_CITY, 6
	warp_event 15, 13, CELADON_CITY, 6
	warp_event 17,  2, FED_HIDEOUT_B1F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
