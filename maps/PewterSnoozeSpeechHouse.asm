PewterSnoozeSpeechHouse_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

GrampsScript_0x1a3059:
	jumptextfaceplayer UnknownText_0x1a305f

PewterSnoozeSpeechHouseBookshelf:
	jumpstd picturebookshelf

UnknownText_0x1a305f:
	text "I like snoozing"
	line "with the radio on…"
	cont "…Zzzz…"
	done

PewterSnoozeSpeechHouse_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 5, GROUP_PEWTER_CITY, MAP_PEWTER_CITY
	warp_def $7, $3, 5, GROUP_PEWTER_CITY, MAP_PEWTER_CITY

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 1, 0, $0, PewterSnoozeSpeechHouseBookshelf
	signpost 1, 1, $0, PewterSnoozeSpeechHouseBookshelf

	; people-events
	db 1
	person_event SPRITE_GRAMPS, 7, 9, $8, $0, 255, 255, $90, 0, GrampsScript_0x1a3059, $ffff
