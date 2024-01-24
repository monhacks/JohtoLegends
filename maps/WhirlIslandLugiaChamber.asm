	object_const_def ; object_event constants
	const WHIRLISLANDLUGIACHAMBER_LUGIA

WhirlIslandLugiaChamber_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .Lugia

.Lugia:
	checkevent EVENT_BEAT_LUGIA
	iftrue .NoAppear
	checkevent EVENT_CAUGHT_LUGIA
	iftrue .NoAppear
	checkevent EVENT_HIDEOUT_LUGIA
	iffalse .NoAppear
	checkevent EVENT_RIVAL_GIVES_UP_LUGIA
	iffalse .NoAppear
	return

.Appear:
	appear WHIRLISLANDLUGIACHAMBER_LUGIA
	return

.NoAppear:
	disappear WHIRLISLANDLUGIACHAMBER_LUGIA
	return

Lugia:
	faceplayer
	opentext
	writetext LugiaText
	cry LUGIA
	waitbutton
	closetext
	loadwildmon LUGIA, 70
	loadvar VAR_BATTLETYPE, BATTLETYPE_LUGIA
	startbattle
	ifequal LOSE, .NotBeaten
	disappear WHIRLISLANDLUGIACHAMBER_LUGIA
	reloadmapafterbattle
	special CheckCaughtCelebi
	iftrue .CaughtLugia
	setevent EVENT_BEAT_LUGIA
	end

.CaughtLugia:
	setevent EVENT_CAUGHT_LUGIA
	end

.NotBeaten:
	reloadmapafterbattle
	end

LugiaText:
	text "Gyaaas!"
	done

WhirlIslandLugiaChamber_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  9, 13, WHIRL_ISLAND_B2F, 3

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  9,  5, SPRITE_LUGIA, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Lugia, EVENT_WHIRL_ISLAND_LUGIA_CHAMBER_LUGIA
