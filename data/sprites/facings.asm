Facings:
; entries correspond to FACING_* constants
	dw FacingStepDown0
	dw FacingStepDown1
	dw FacingStepDown2
	dw FacingStepDown3
	dw FacingStepUp0
	dw FacingStepUp1
	dw FacingStepUp2
	dw FacingStepUp3
	dw FacingStepLeft0
	dw FacingStepLeft1
	dw FacingStepLeft2
	dw FacingStepLeft3
	dw FacingStepRight0
	dw FacingStepRight1
	dw FacingStepRight2
	dw FacingStepRight3
	dw FacingFishDown
	dw FacingFishUp
	dw FacingFishLeft
	dw FacingFishRight
	dw FacingEmote
	dw FacingShadow
	dw FacingBigDollAsymmetric
	dw FacingBigDollSymmetric
	dw FacingWeirdTree0
	dw FacingWeirdTree1
	dw FacingWeirdTree2
	dw FacingWeirdTree3
	dw FacingBoulderDust1
	dw FacingBoulderDust2
	dw FacingGrass1
	dw FacingGrass2
	dw FacingSplash1
	dw FacingSplash2
.End
	dw 0

NUM_FACINGS EQU (Facings.End - Facings) / 2

; Tables used as a reference to transform OAM data.

; Format:
;	db y, x, attributes, tile index

FacingStepDown0:
FacingStepDown2:
FacingWeirdTree0:
FacingWeirdTree2: ; standing down
	db 4 ; #
	db  0,  0, 0, $00
	db  0,  8, 0, $01
	db  8,  0, RELATIVE_ATTRIBUTES, $02
	db  8,  8, RELATIVE_ATTRIBUTES, $03

FacingStepDown1: ; walking down 1
	db 4 ; #
	db  0,  0, 0, $0C
	db  0,  8, 0, $0D
	db  8,  0, RELATIVE_ATTRIBUTES, $0E
	db  8,  8, RELATIVE_ATTRIBUTES, $0F

FacingStepDown3: ; walking down 2
	db 4 ; #
	db  0,  8, X_FLIP, $0C
	db  0,  0, X_FLIP, $0D
	db  8,  8, RELATIVE_ATTRIBUTES | X_FLIP, $0E
	db  8,  0, RELATIVE_ATTRIBUTES | X_FLIP, $0F

FacingStepUp0:
FacingStepUp2: ; standing up
	db 4 ; #
	db  0,  0, 0, $04
	db  0,  8, 0, $05
	db  8,  0, RELATIVE_ATTRIBUTES, $06
	db  8,  8, RELATIVE_ATTRIBUTES, $07

FacingStepUp1: ; walking up 1
	db 4 ; #
	db  0,  0, 0, $10
	db  0,  8, 0, $11
	db  8,  0, RELATIVE_ATTRIBUTES, $12
	db  8,  8, RELATIVE_ATTRIBUTES, $13

FacingStepUp3: ; walking up 2
	db 4 ; #
	db  0,  8, X_FLIP, $10
	db  0,  0, X_FLIP, $11
	db  8,  8, RELATIVE_ATTRIBUTES | X_FLIP, $12
	db  8,  0, RELATIVE_ATTRIBUTES | X_FLIP, $13

FacingStepLeft0:
FacingStepLeft2: ; standing left
	db 4 ; #
	db  0,  0, 0, $08
	db  0,  8, 0, $09
	db  8,  0, RELATIVE_ATTRIBUTES, $0a
	db  8,  8, RELATIVE_ATTRIBUTES, $0b

FacingStepRight0:
FacingStepRight2: ; standing right
	db 4 ; #
	db  0,  8, X_FLIP, $08
	db  0,  0, X_FLIP, $09
	db  8,  8, RELATIVE_ATTRIBUTES | X_FLIP, $0a
	db  8,  0, RELATIVE_ATTRIBUTES | X_FLIP, $0b

FacingStepLeft1:
FacingStepLeft3: ; walking left
	db 4 ; #
	db  0,  0, 0, $14
	db  0,  8, 0, $15
	db  8,  0, RELATIVE_ATTRIBUTES, $16
	db  8,  8, RELATIVE_ATTRIBUTES, $17

FacingStepRight1:
FacingStepRight3: ; walking right
	db 4 ; #
	db  0,  8, X_FLIP, $14
	db  0,  0, X_FLIP, $15
	db  8,  8, RELATIVE_ATTRIBUTES | X_FLIP, $16
	db  8,  0, RELATIVE_ATTRIBUTES | X_FLIP, $17

FacingFishDown: ; fishing down
	db 5 ; #
	db  0,  0, 0, $00
	db  0,  8, 0, $01
	db  8,  0, RELATIVE_ATTRIBUTES, $02
	db  8,  8, RELATIVE_ATTRIBUTES, $03
	db 16,  0, ABSOLUTE_TILE_ID, $fc

FacingFishUp: ; fishing up
	db 5 ; #
	db  0,  0, 0, $04
	db  0,  8, 0, $05
	db  8,  0, RELATIVE_ATTRIBUTES, $06
	db  8,  8, RELATIVE_ATTRIBUTES, $07
	db -8,  0, ABSOLUTE_TILE_ID, $fc

FacingFishLeft: ; fishing left
	db 5 ; #
	db  0,  0, 0, $08
	db  0,  8, 0, $09
	db  8,  0, RELATIVE_ATTRIBUTES, $0a
	db  8,  8, RELATIVE_ATTRIBUTES, $0b
	db  5, -8, ABSOLUTE_TILE_ID | X_FLIP, $fd

FacingFishRight: ; fishing right
	db 5 ; #
	db  0,  8, X_FLIP, $08
	db  0,  0, X_FLIP, $09
	db  8,  8, RELATIVE_ATTRIBUTES | X_FLIP, $0a
	db  8,  0, RELATIVE_ATTRIBUTES | X_FLIP, $0b
	db  5, 16, ABSOLUTE_TILE_ID, $fd

FacingEmote: ; emote
	db 4 ; #
	db  0,  0, ABSOLUTE_TILE_ID, $f8
	db  0,  8, ABSOLUTE_TILE_ID, $f9
	db  8,  0, ABSOLUTE_TILE_ID, $fa
	db  8,  8, ABSOLUTE_TILE_ID, $fb

FacingShadow: ; shadow
	db 2 ; #
	db  0,  0, ABSOLUTE_TILE_ID, $fc
	db  0,  8, ABSOLUTE_TILE_ID | X_FLIP, $fc

FacingBigDollSymmetric: ; big snorlax or lapras doll
	db 16 ; #
	db  0,  0, 0, $00
	db  0,  8, 0, $01
	db  8,  0, 0, $02
	db  8,  8, 0, $03
	db 16,  0, 0, $04
	db 16,  8, 0, $05
	db 24,  0, 0, $06
	db 24,  8, 0, $07
	db  0, 24, X_FLIP, $00
	db  0, 16, X_FLIP, $01
	db  8, 24, X_FLIP, $02
	db  8, 16, X_FLIP, $03
	db 16, 24, X_FLIP, $04
	db 16, 16, X_FLIP, $05
	db 24, 24, X_FLIP, $06
	db 24, 16, X_FLIP, $07

FacingWeirdTree1:
	db 4 ; #
	db  0,  0, 0, $04
	db  0,  8, 0, $05
	db  8,  0, 0, $06
	db  8,  8, 0, $07

FacingWeirdTree3:
	db 4 ; #
	db  0,  8, X_FLIP, $04
	db  0,  0, X_FLIP, $05
	db  8,  8, X_FLIP, $06
	db  8,  0, X_FLIP, $07

FacingBigDollAsymmetric: ; big doll other than snorlax or lapras
	db 14 ; #
	db  0,  0, 0, $00
	db  0,  8, 0, $01
	db  8,  0, 0, $04
	db  8,  8, 0, $05
	db 16,  8, 0, $07
	db 24,  8, 0, $0a
	db  0, 24, 0, $03
	db  0, 16, 0, $02
	db  8, 24, X_FLIP, $02
	db  8, 16, 0, $06
	db 16, 24, 0, $09
	db 16, 16, 0, $08
	db 24, 24, X_FLIP, $04
	db 24, 16, 0, $0b

FacingBoulderDust1: ; boulder dust 1
	db 4 ; #
	db  0,  0, ABSOLUTE_TILE_ID, $fe
	db  0,  8, ABSOLUTE_TILE_ID, $fe
	db  8,  0, ABSOLUTE_TILE_ID, $fe
	db  8,  8, ABSOLUTE_TILE_ID, $fe

FacingBoulderDust2: ; boulder dust 2
	db 4 ; #
	db  0,  0, ABSOLUTE_TILE_ID, $ff
	db  0,  8, ABSOLUTE_TILE_ID, $ff
	db  8,  0, ABSOLUTE_TILE_ID, $ff
	db  8,  8, ABSOLUTE_TILE_ID, $ff

FacingGrass1:
	db 2 ; #
	db  8,  0, ABSOLUTE_TILE_ID, $fe
	db  8,  8, ABSOLUTE_TILE_ID | X_FLIP, $fe

FacingGrass2:
	db 2 ; #
	db  9, -1, ABSOLUTE_TILE_ID, $fe
	db  9,  9, ABSOLUTE_TILE_ID | X_FLIP, $fe

FacingSplash1:
	db 2 ; #
	db  8,  0, ABSOLUTE_TILE_ID, $ff
	db  8,  8, ABSOLUTE_TILE_ID | X_FLIP, $ff

FacingSplash2:
	db 2 ; #
	db  9, -1, ABSOLUTE_TILE_ID, $ff
	db  9,  9, ABSOLUTE_TILE_ID | X_FLIP, $ff
