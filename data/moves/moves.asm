; Characteristics of each move.

move: MACRO
	; the animation byte will be filled when the move is loaded
	db \1 ; effect
	db \2 ; power
	db \3 | \4 ; type
	db \5 percent ; accuracy
	db \6 ; pp
	db \7 percent ; effect chance
ENDM

Moves::
; entries correspond to constants/move_constants.asm
	indirect_table MOVE_LENGTH - 1, 1
	indirect_entries NUM_ATTACKS, Moves1
	indirect_table_end

Moves1:
	move EFFECT_NORMAL_HIT,         40, NORMAL,   PHYSICAL, 100, 35,   0 ;POUND
	move EFFECT_NORMAL_HIT,         50, FIGHTING, PHYSICAL, 100, 25,   0 ;KARATE_CHOP
	move EFFECT_MULTI_HIT,          15, FAIRY,    PHYSICAL,  85, 10,   0 ;DOUBLESLAP
	move EFFECT_MULTI_HIT,          18, NORMAL,   PHYSICAL,  85, 15,   0 ;COMET_PUNCH
	move EFFECT_NORMAL_HIT,         80, NORMAL,   PHYSICAL,  85, 20,   0 ;MEGA_PUNCH
	move EFFECT_PAY_DAY,            40, NORMAL,   PHYSICAL, 100, 20,   0 ;PAY_DAY
	move EFFECT_BURN_HIT,           75, FIRE,     PHYSICAL, 100, 15,  10 ;FIRE_PUNCH
	move EFFECT_FREEZE_HIT,         75, ICE,      PHYSICAL, 100, 15,  10 ;ICE_PUNCH
	move EFFECT_PARALYZE_HIT,       75, ELECTRIC, PHYSICAL, 100, 15,  10 ;THUNDERPUNCH
	move EFFECT_NORMAL_HIT,         40, NORMAL,   PHYSICAL, 100, 35,   0 ;SCRATCH
	move EFFECT_NORMAL_HIT,         55, NORMAL,   PHYSICAL, 100, 30,   0 ;VICEGRIP
	move EFFECT_OHKO,                0, NORMAL,   PHYSICAL,  30,  5,   0 ;GUILLOTINE
	move EFFECT_NORMAL_HIT,         80, NORMAL,   SPECIAL,  100, 10,   0 ;RAZOR_WIND
	move EFFECT_ATTACK_UP_2,         0, NORMAL,   STATUS,   100, 20,   0 ;SWORDS_DANCE
	move EFFECT_NORMAL_HIT,         50, NORMAL,   PHYSICAL,  95, 30,   0 ;CUT
	move EFFECT_GUST,               40, FLYING,   SPECIAL,  100, 35,   0 ;GUST
	move EFFECT_NORMAL_HIT,         60, FLYING,   PHYSICAL, 100, 35,   0 ;WING_ATTACK
	move EFFECT_FORCE_SWITCH,        0, NORMAL,   STATUS,   100, 20,   0 ;WHIRLWIND
	move EFFECT_FLY,                90, FLYING,   PHYSICAL,  95, 15,   0 ;FLY
	move EFFECT_TRAP_TARGET,        15, NORMAL,   PHYSICAL,  85, 20,   0 ;BIND
	move EFFECT_NORMAL_HIT,         80, NORMAL,   PHYSICAL,  75, 20,   0 ;SLAM
	move EFFECT_NORMAL_HIT,         45, GRASS,    PHYSICAL, 100, 25,   0 ;VINE_WHIP
	move EFFECT_STOMP,              65, NORMAL,   PHYSICAL, 100, 20,  30 ;STOMP
	move EFFECT_DOUBLE_HIT,         30, FIGHTING, PHYSICAL, 100, 30,   0 ;DOUBLE_KICK
	move EFFECT_NORMAL_HIT,        120, NORMAL,   PHYSICAL,  75,  5,   0 ;MEGA_KICK
	move EFFECT_JUMP_KICK,         100, FIGHTING, PHYSICAL,  95, 10,   0 ;JUMP_KICK
	move EFFECT_FLINCH_HIT,         60, FIGHTING, PHYSICAL,  85, 15,  30 ;ROLLING_KICK
	move EFFECT_ACCURACY_DOWN,       0, GROUND,   STATUS,   100, 15,   0 ;SAND_ATTACK
	move EFFECT_FLINCH_HIT,         70, NORMAL,   PHYSICAL, 100, 15,  30 ;HEADBUTT
	move EFFECT_NORMAL_HIT,         65, NORMAL,   PHYSICAL, 100, 25,   0 ;HORN_ATTACK
	move EFFECT_MULTI_HIT,          15, NORMAL,   PHYSICAL,  85, 20,   0 ;FURY_ATTACK
	move EFFECT_OHKO,                1, NORMAL,   PHYSICAL,  30,  5,   0 ;HORN_DRILL
	move EFFECT_NORMAL_HIT,         40, NORMAL,   PHYSICAL, 100, 35,   0 ;TACKLE
	move EFFECT_PARALYZE_HIT,       85, NORMAL,   PHYSICAL, 100, 15,  30 ;BODY_SLAM
	move EFFECT_TRAP_TARGET,        15, NORMAL,   PHYSICAL,  90, 20,   0 ;WRAP
	move EFFECT_RECOIL_HIT,         90, NORMAL,   PHYSICAL,  85, 20,   0 ;TAKE_DOWN
	move EFFECT_RAMPAGE,           120, NORMAL,   PHYSICAL, 100, 10,   0 ;THRASH
	move EFFECT_RECOIL_HIT,        120, NORMAL,   PHYSICAL, 100, 15,   0 ;DOUBLE_EDGE
	move EFFECT_DEFENSE_DOWN,        0, NORMAL,   STATUS,   100, 30,   0 ;TAIL_WHIP
	move EFFECT_POISON_HIT,         15, POISON,   PHYSICAL, 100, 35,  30 ;POISON_STING
	move EFFECT_POISON_MULTI_HIT,   25, BUG,      PHYSICAL, 100, 20,  36 ;TWINEEDLE
	move EFFECT_MULTI_HIT,          25, BUG,      PHYSICAL,  95, 20,   0 ;PIN_MISSILE
	move EFFECT_DEFENSE_DOWN,        0, NORMAL,   STATUS,   100, 30,   0 ;LEER
	move EFFECT_FLINCH_HIT,         60, DARK,     PHYSICAL, 100, 25,  30 ;BITE
	move EFFECT_ATTACK_DOWN,         0, NORMAL,   STATUS,   100, 40,   0 ;GROWL
	move EFFECT_FORCE_SWITCH,        0, NORMAL,   STATUS,   100, 20,   0 ;ROAR
	move EFFECT_SLEEP,               0, NORMAL,   STATUS,    55, 15,   0 ;SING
	move EFFECT_CONFUSE,             0, NORMAL,   STATUS,    55, 20,   0 ;SUPERSONIC
	move EFFECT_STATIC_DAMAGE,      20, NORMAL,   SPECIAL,   90, 20,   0 ;SONICBOOM
	move EFFECT_DISABLE,             0, NORMAL,   STATUS,   100, 20,   0 ;DISABLE
	move EFFECT_SP_DEF_DOWN_HIT,    40, POISON,   SPECIAL,  100, 30,  10 ;ACID
	move EFFECT_BURN_HIT,           40, FIRE,     SPECIAL,  100, 25,  10 ;EMBER
	move EFFECT_BURN_HIT,           90, FIRE,     SPECIAL,  100, 15,  10 ;FLAMETHROWER
	move EFFECT_MIST,                0, ICE,      STATUS,   100, 30,   0 ;MIST
	move EFFECT_NORMAL_HIT,         40, WATER,    SPECIAL,  100, 25,   0 ;WATER_GUN
	move EFFECT_NORMAL_HIT,        110, WATER,    SPECIAL,   80,  5,   0 ;HYDRO_PUMP
	move EFFECT_NORMAL_HIT,         90, WATER,    SPECIAL,  100, 15,   0 ;SURF
	move EFFECT_FREEZE_HIT,         90, ICE,      SPECIAL,  100, 10,  10 ;ICE_BEAM
	move EFFECT_BLIZZARD,          110, ICE,      SPECIAL,   70,  5,  10 ;BLIZZARD
	move EFFECT_CONFUSE_HIT,        65, PSYCHIC,  SPECIAL,  100, 20,  10 ;PSYBEAM
	move EFFECT_SPEED_DOWN_HIT,     65, WATER,    SPECIAL,  100, 20,  10 ;BUBBLEBEAM
	move EFFECT_ATTACK_DOWN_HIT,    65, ICE,      SPECIAL,  100, 20,  10 ;AURORA_BEAM
	move EFFECT_HYPER_BEAM,        150, NORMAL,   SPECIAL,   90,  5,   0 ;HYPER_BEAM
	move EFFECT_NORMAL_HIT,         35, FLYING,   PHYSICAL, 100, 35,   0 ;PECK
	move EFFECT_NORMAL_HIT,         80, FLYING,   PHYSICAL, 100, 20,   0 ;DRILL_PECK
	move EFFECT_RECOIL_HIT,         80, FIGHTING, PHYSICAL,  80, 25,   0 ;SUBMISSION
	move EFFECT_GRASS_KNOT,          1, FIGHTING, PHYSICAL, 100, 20,   0 ;LOW_KICK
	move EFFECT_COUNTER,             1, FIGHTING, PHYSICAL, 100, 20,   0 ;COUNTER
	move EFFECT_LEVEL_DAMAGE,        1, FIGHTING, PHYSICAL, 100, 20,   0 ;SEISMIC_TOSS
	move EFFECT_NORMAL_HIT,         80, NORMAL,   PHYSICAL, 100, 15,   0 ;STRENGTH
	move EFFECT_LEECH_HIT,          20, GRASS,    SPECIAL,  100, 25,   0 ;ABSORB
	move EFFECT_LEECH_HIT,          40, GRASS,    SPECIAL,  100, 15,   0 ;MEGA_DRAIN
	move EFFECT_LEECH_SEED,          0, GRASS,    STATUS,    90, 10,   0 ;LEECH_SEED
	move EFFECT_GROWTH,              0, NORMAL,   STATUS,   100, 20,   0 ;GROWTH
	move EFFECT_NORMAL_HIT,         55, GRASS,    PHYSICAL,  95, 25,   0 ;RAZOR_LEAF
	move EFFECT_SOLARBEAM,         120, GRASS,    SPECIAL,  100, 10,   0 ;SOLARBEAM
	move EFFECT_POISON,              0, POISON,   STATUS,    75, 35,   0 ;POISONPOWDER
	move EFFECT_PARALYZE,            0, GRASS,    STATUS,    75, 30,   0 ;STUN_SPORE
	move EFFECT_SLEEP,               0, GRASS,    STATUS,    75, 15,   0 ;SLEEP_POWDER
	move EFFECT_RAMPAGE,           120, GRASS,    SPECIAL,  100, 10,   0 ;PETAL_DANCE
	move EFFECT_SPEED_DOWN,          0, BUG,      STATUS,    95, 40,   0 ;STRING_SHOT
	move EFFECT_NORMAL_HIT,         40, DRAGON,   SPECIAL,  100, 20,   0 ;DRAGON_RAGE
	move EFFECT_TRAP_TARGET,        35, FIRE,     SPECIAL,   85, 15,   0 ;FIRE_SPIN
	move EFFECT_PARALYZE_HIT,       40, ELECTRIC, SPECIAL,  100, 30,  10 ;THUNDERSHOCK
	move EFFECT_PARALYZE_HIT,       90, ELECTRIC, SPECIAL,  100, 15,  10 ;THUNDERBOLT
	move EFFECT_PARALYZE,            0, ELECTRIC, STATUS,   100, 20,   0 ;THUNDER_WAVE
	move EFFECT_THUNDER,           110, ELECTRIC, SPECIAL,   70, 10,  30 ;THUNDER
	move EFFECT_NORMAL_HIT,         60, ROCK,     PHYSICAL,  90, 15,   0 ;ROCK_THROW
	move EFFECT_EARTHQUAKE,        100, GROUND,   PHYSICAL, 100, 10,   0 ;EARTHQUAKE
	move EFFECT_OHKO,                1, GROUND,   PHYSICAL,  30,  5,   0 ;FISSURE
	move EFFECT_FLY,                80, GROUND,   PHYSICAL, 100, 10,   0 ;DIG
	move EFFECT_TOXIC,               0, POISON,   STATUS,    90, 10,   0 ;TOXIC
	move EFFECT_CONFUSE_HIT,        50, PSYCHIC,  SPECIAL,  100, 25,  10 ;CONFUSION
	move EFFECT_SP_DEF_DOWN_HIT,    90, PSYCHIC,  SPECIAL,  100, 10,  10 ;PSYCHIC_M
	move EFFECT_SLEEP,               0, PSYCHIC,  STATUS,    70, 20,   0 ;HYPNOSIS
	move EFFECT_ATTACK_UP,           0, PSYCHIC,  STATUS,   100, 40,   0 ;MEDITATE
	move EFFECT_SPEED_UP_2,          0, PSYCHIC,  STATUS,   100, 30,   0 ;AGILITY
	move EFFECT_PRIORITY_HIT,       40, NORMAL,   PHYSICAL, 100, 30,   0 ;QUICK_ATTACK
	move EFFECT_RAGE,               20, NORMAL,   PHYSICAL, 100, 20,   0 ;RAGE
	move EFFECT_TELEPORT,            0, PSYCHIC,  STATUS,   100, 20,   0 ;TELEPORT
	move EFFECT_LEVEL_DAMAGE,        1, GHOST,    SPECIAL,  100, 15,   0 ;NIGHT_SHADE
	move EFFECT_MIMIC,               0, NORMAL,   STATUS,   100, 10,   0 ;MIMIC
	move EFFECT_DEFENSE_DOWN_2,      0, NORMAL,   STATUS,    85, 40,   0 ;SCREECH
	move EFFECT_EVASION_UP,          0, NORMAL,   STATUS,   100, 15,   0 ;DOUBLE_TEAM
	move EFFECT_HEAL,                0, NORMAL,   STATUS,   100, 10,   0 ;RECOVER
	move EFFECT_DEFENSE_UP,          0, NORMAL,   STATUS,   100, 30,   0 ;HARDEN
	move EFFECT_EVASION_UP,          0, NORMAL,   STATUS,   100, 10,   0 ;MINIMIZE
	move EFFECT_ACCURACY_DOWN,       0, NORMAL,   STATUS,   100, 20,   0 ;SMOKESCREEN
	move EFFECT_CONFUSE,             0, GHOST,    STATUS,   100, 10,   0 ;CONFUSE_RAY
	move EFFECT_DEFENSE_UP,          0, WATER,    STATUS,   100, 40,   0 ;WITHDRAW
	move EFFECT_DEFENSE_CURL,        0, NORMAL,   STATUS,   100, 40,   0 ;DEFENSE_CURL
	move EFFECT_DEFENSE_UP_2,        0, PSYCHIC,  STATUS,   100, 20,   0 ;BARRIER
	move EFFECT_LIGHT_SCREEN,        0, PSYCHIC,  STATUS,   100, 30,   0 ;LIGHT_SCREEN
	move EFFECT_RESET_STATS,         0, ICE,      STATUS,   100, 30,   0 ;HAZE
	move EFFECT_REFLECT,             0, PSYCHIC,  STATUS,   100, 20,   0 ;REFLECT
	move EFFECT_FOCUS_ENERGY,        0, NORMAL,   STATUS,   100, 30,   0 ;FOCUS_ENERGY
	move EFFECT_SPEED_DOWN_HIT,     60, ROCK,     PHYSICAL,  95, 15, 100 ;ROCK_TOMB
	move EFFECT_METRONOME,           0, NORMAL,   STATUS,   100, 10,   0 ;METRONOME
	move EFFECT_MIRROR_MOVE,         0, FLYING,   STATUS,   100, 20,   0 ;MIRROR_MOVE
	move EFFECT_SELFDESTRUCT,      200, NORMAL,   PHYSICAL, 100,  5,   0 ;SELFDESTRUCT
	move EFFECT_NORMAL_HIT,        100, NORMAL,   PHYSICAL,  75, 10,   0 ;EGG_BOMB
	move EFFECT_PARALYZE_HIT,       30, GHOST,    PHYSICAL, 100, 30,  30 ;LICK
	move EFFECT_POISON_HIT,         30, POISON,   SPECIAL,   70, 20,  40 ;SMOG
	move EFFECT_POISON_HIT,         65, POISON,   SPECIAL,  100, 20,  30 ;SLUDGE
	move EFFECT_FLINCH_HIT,         65, GROUND,   PHYSICAL,  85, 20,  10 ;BONE_CLUB
	move EFFECT_BURN_HIT,          110, FIRE,     SPECIAL,   85,  5,  10 ;FIRE_BLAST
	move EFFECT_FLINCH_HIT,         80, WATER,    PHYSICAL, 100, 15,  20 ;WATERFALL
	move EFFECT_TRAP_TARGET,        35, WATER,    PHYSICAL,  85, 15,   0 ;CLAMP
	move EFFECT_ALWAYS_HIT,         60, NORMAL,   SPECIAL,  100, 20,   0 ;SWIFT
	move EFFECT_SKULL_BASH,        130, NORMAL,   PHYSICAL, 100, 10,   0 ;SKULL_BASH
	move EFFECT_MULTI_HIT,          20, NORMAL,   PHYSICAL, 100, 15,   0 ;SPIKE_CANNON
	move EFFECT_SPEED_DOWN_HIT,     10, NORMAL,   PHYSICAL, 100, 35,  10 ;CONSTRICT
	move EFFECT_SP_DEF_UP_2,         0, PSYCHIC,  STATUS,   100, 20,   0 ;AMNESIA
	move EFFECT_ACCURACY_DOWN,       0, PSYCHIC,  STATUS,    80, 15,   0 ;KINESIS
	move EFFECT_HEAL,                0, NORMAL,   STATUS,   100, 10,   0 ;SOFTBOILED
	move EFFECT_JUMP_KICK,         130, FIGHTING, PHYSICAL,  90, 10,   0 ;HI_JUMP_KICK
	move EFFECT_PARALYZE,            0, NORMAL,   STATUS,   100, 30,   0 ;GLARE
	move EFFECT_DREAM_EATER,       100, PSYCHIC,  SPECIAL,  100, 15,   0 ;DREAM_EATER
	move EFFECT_POISON,              0, POISON,   STATUS,    90, 40,   0 ;POISON_GAS
	move EFFECT_MULTI_HIT,          15, NORMAL,   PHYSICAL,  85, 20,   0 ;BARRAGE
	move EFFECT_LEECH_HIT,          80, BUG,      PHYSICAL, 100, 10,   0 ;LEECH_LIFE
	move EFFECT_SLEEP,               0, NORMAL,   STATUS,    75, 10,   0 ;LOVELY_KISS
	move EFFECT_SKY_ATTACK,        140, FLYING,   PHYSICAL,  90,  5,  30 ;SKY_ATTACK
	move EFFECT_TRANSFORM,           0, NORMAL,   STATUS,   100, 10,   0 ;TRANSFORM
	move EFFECT_SPEED_DOWN_HIT,     40, WATER,    SPECIAL,  100, 30,  10 ;BUBBLE
	move EFFECT_CONFUSE_HIT,        70, NORMAL,   PHYSICAL, 100, 10,  20 ;DIZZY_PUNCH
	move EFFECT_SLEEP,               0, GRASS,    STATUS,   100, 15,   0 ;SPORE
	move EFFECT_ACCURACY_DOWN,       0, NORMAL,   STATUS,   100, 20,   0 ;FLASH
	move EFFECT_PSYWAVE,             1, PSYCHIC,  SPECIAL,  100, 15,   0 ;PSYWAVE
	move EFFECT_SPLASH,              0, NORMAL,   STATUS,   100, 40,   0 ;SPLASH
	move EFFECT_DEFENSE_UP_2,        0, POISON,   STATUS,   100, 20,   0 ;ACID_ARMOR
	move EFFECT_NORMAL_HIT,        100, WATER,    PHYSICAL,  90, 10,   0 ;CRABHAMMER
	move EFFECT_SELFDESTRUCT,      250, NORMAL,   PHYSICAL, 100,  5,   0 ;EXPLOSION
	move EFFECT_MULTI_HIT,          18, NORMAL,   PHYSICAL,  80, 15,   0 ;FURY_SWIPES
	move EFFECT_DOUBLE_HIT,         50, GROUND,   PHYSICAL,  90, 10,   0 ;BONEMERANG
	move EFFECT_HEAL,                0, PSYCHIC,  STATUS,   100, 10,   0 ;REST
	move EFFECT_FLINCH_HIT,         75, ROCK,     PHYSICAL,  90, 10,  30 ;ROCK_SLIDE
	move EFFECT_FLINCH_HIT,         80, NORMAL,   PHYSICAL,  90, 15,  10 ;HYPER_FANG
	move EFFECT_ATTACK_UP,           0, NORMAL,   STATUS,   100, 30,   0 ;SHARPEN
	move EFFECT_CONVERSION,          0, NORMAL,   STATUS,   100, 30,   0 ;CONVERSION
	move EFFECT_TRI_ATTACK,         80, NORMAL,   SPECIAL,  100, 10,  20 ;TRI_ATTACK
	move EFFECT_SUPER_FANG,          1, NORMAL,   PHYSICAL,  90, 10,   0 ;SUPER_FANG
	move EFFECT_NORMAL_HIT,         70, NORMAL,   PHYSICAL, 100, 20,   0 ;SLASH
	move EFFECT_SUBSTITUTE,          0, NORMAL,   STATUS,   100, 10,   0 ;SUBSTITUTE
	move EFFECT_RECOIL_HIT,         50, NORMAL,   PHYSICAL, 100,  1,   0 ;STRUGGLE
	move EFFECT_SKETCH,              0, NORMAL,   STATUS,   100,  1,   0 ;SKETCH
	move EFFECT_TRIPLE_KICK,        10, FIGHTING, PHYSICAL,  90, 10,   0 ;TRIPLE_KICK
	move EFFECT_THIEF,              60, DARK,     PHYSICAL, 100, 25, 100 ;THIEF
	move EFFECT_MEAN_LOOK,           0, BUG,      STATUS,   100, 10,   0 ;SPIDER_WEB
	move EFFECT_LOCK_ON,             0, NORMAL,   STATUS,   100,  5,   0 ;MIND_READER
	move EFFECT_ATTACK_DOWN_2,       0, FLYING,   STATUS,	100, 15,   0 ;FEATHERDANCE
	move EFFECT_FLAME_WHEEL,        60, FIRE,     PHYSICAL, 100, 25,  10 ;FLAME_WHEEL
	move EFFECT_SNORE,              50, NORMAL,   SPECIAL,  100, 15,  30 ;SNORE
	move EFFECT_CURSE,               0, CURSE_T,  STATUS,   100, 10,   0 ;CURSE
	move EFFECT_REVERSAL,            1, NORMAL,   PHYSICAL, 100, 15,   0 ;FLAIL
	move EFFECT_CALM_MIND,           0, PSYCHIC,  STATUS,   100, 20,   0 ;CALM_MIND
	move EFFECT_NORMAL_HIT,        100, FLYING,   SPECIAL,   95,  5,   0 ;AEROBLAST
	move EFFECT_SPEED_DOWN_2,        0, GRASS,    STATUS,   100, 40,   0 ;COTTON_SPORE
	move EFFECT_REVERSAL,            1, FIGHTING, PHYSICAL, 100, 15,   0 ;REVERSAL
	move EFFECT_SPITE,               0, GHOST,    STATUS,   100, 10,   0 ;SPITE
	move EFFECT_FREEZE_HIT,         40, ICE,      SPECIAL,  100, 25,  10 ;POWDER_SNOW
	move EFFECT_PROTECT,             0, NORMAL,   STATUS,   100, 10,   0 ;PROTECT
	move EFFECT_PRIORITY_HIT,       40, FIGHTING, PHYSICAL, 100, 30,   0 ;MACH_PUNCH
	move EFFECT_SPEED_DOWN_2,        0, NORMAL,   STATUS,   100, 10,   0 ;SCARY_FACE
	move EFFECT_ALWAYS_HIT,         60, DARK,     PHYSICAL, 100, 20,   0 ;FAINT_ATTACK
	move EFFECT_CONFUSE,             0, FAIRY,    STATUS,    75, 10,   0 ;SWEET_KISS
	move EFFECT_BELLY_DRUM,          0, NORMAL,   STATUS,   100, 10,   0 ;BELLY_DRUM
	move EFFECT_POISON_HIT,         90, POISON,   SPECIAL,  100, 10,  30 ;SLUDGE_BOMB
	move EFFECT_ACCURACY_DOWN_HIT,  20, GROUND,   SPECIAL,  100, 10, 100 ;MUD_SLAP
	move EFFECT_ACCURACY_DOWN_HIT,  65, WATER,    SPECIAL,   85, 10,  50 ;OCTAZOOKA
	move EFFECT_SPIKES,              0, GROUND,   STATUS,   100, 20,   0 ;SPIKES
	move EFFECT_PARALYZE_HIT,      120, ELECTRIC, SPECIAL,   50,  5, 100 ;ZAP_CANNON
	move EFFECT_FORESIGHT,           0, NORMAL,   STATUS,   100, 40,   0 ;FORESIGHT
	move EFFECT_DESTINY_BOND,        0, GHOST,    STATUS,   100,  5,   0 ;DESTINY_BOND
	move EFFECT_PERISH_SONG,         0, NORMAL,   STATUS,   100,  5,   0 ;PERISH_SONG
	move EFFECT_SPEED_DOWN_HIT,     55, ICE,      SPECIAL,   95, 15, 100 ;ICY_WIND
	move EFFECT_PROTECT,             0, FIGHTING, STATUS,   100,  5,   0 ;DETECT
	move EFFECT_MULTI_HIT,          25, GROUND,   PHYSICAL,  90, 10,   0 ;BONE_RUSH
	move EFFECT_LOCK_ON,             0, NORMAL,   STATUS,   100,  5,   0 ;LOCK_ON
	move EFFECT_RAMPAGE,            90, DRAGON,   PHYSICAL, 100, 15,   0 ;OUTRAGE
	move EFFECT_SANDSTORM,           0, ROCK,     STATUS,   100, 10,   0 ;SANDSTORM
	move EFFECT_LEECH_HIT,          75, GRASS,    SPECIAL,  100, 10,   0 ;GIGA_DRAIN
	move EFFECT_ENDURE,              0, NORMAL,   STATUS,   100, 10,   0 ;ENDURE
	move EFFECT_ATTACK_DOWN_2,       0, FAIRY,    STATUS,   100, 20,   0 ;CHARM
	move EFFECT_ROLLOUT,            30, ROCK,     PHYSICAL,  90, 20,   0 ;ROLLOUT
	move EFFECT_FALSE_SWIPE,        40, NORMAL,   PHYSICAL, 100, 40,   0 ;FALSE_SWIPE
	move EFFECT_SWAGGER,             0, NORMAL,   STATUS,    85, 15, 100 ;SWAGGER
	move EFFECT_HEAL,                0, NORMAL,   STATUS,   100, 10,   0 ;MILK_DRINK
	move EFFECT_PARALYZE_HIT,       65, ELECTRIC, PHYSICAL, 100, 20,  30 ;SPARK
	move EFFECT_FURY_CUTTER,        40, BUG,      PHYSICAL,  95, 20,   0 ;FURY_CUTTER
	move EFFECT_DEFENSE_UP_HIT,     70, STEEL,    PHYSICAL,  90, 25,  10 ;STEEL_WING
	move EFFECT_MEAN_LOOK,           0, NORMAL,   STATUS,   100,  5,   0 ;MEAN_LOOK
	move EFFECT_ATTRACT,             0, NORMAL,   STATUS,   100, 15,   0 ;ATTRACT
	move EFFECT_SLEEP_TALK,          0, NORMAL,   STATUS,   100, 10,   0 ;SLEEP_TALK
	move EFFECT_HEAL_BELL,           0, NORMAL,   STATUS,   100,  5,   0 ;HEAL_BELL
	move EFFECT_RETURN,              1, NORMAL,   PHYSICAL, 100, 20,   0 ;RETURN
	move EFFECT_PRESENT,             1, NORMAL,   SPECIAL,   90, 15,   0 ;PRESENT
	move EFFECT_COSMIC_POWER,        0, PSYCHIC,  STATUS,	100, 20,   0 ;COSMIC_POWER
	move EFFECT_SAFEGUARD,           0, NORMAL,   STATUS,   100, 25,   0 ;SAFEGUARD
	move EFFECT_PAIN_SPLIT,          0, NORMAL,   STATUS,   100, 20,   0 ;PAIN_SPLIT
	move EFFECT_SACRED_FIRE,       100, FIRE,     PHYSICAL,  95,  5,  50 ;SACRED_FIRE
	move EFFECT_MAGNITUDE,           1, GROUND,   PHYSICAL, 100, 30,   0 ;MAGNITUDE
	move EFFECT_CONFUSE_HIT,       100, FIGHTING, PHYSICAL,  50,  5, 100 ;DYNAMICPUNCH
	move EFFECT_NORMAL_HIT,        120, BUG,      PHYSICAL,  85, 10,   0 ;MEGAHORN
	move EFFECT_PARALYZE_HIT,       60, DRAGON,   SPECIAL,  100, 20,  30 ;DRAGONBREATH
	move EFFECT_BATON_PASS,          0, NORMAL,   STATUS,   100, 40,   0 ;BATON_PASS
	move EFFECT_ENCORE,              0, NORMAL,   STATUS,   100,  5,   0 ;ENCORE
	move EFFECT_PURSUIT,            40, DARK,     PHYSICAL, 100, 20,   0 ;PURSUIT
	move EFFECT_RAPID_SPIN,         50, NORMAL,   PHYSICAL, 100, 40,   0 ;RAPID_SPIN
	move EFFECT_EVASION_DOWN,        0, NORMAL,   STATUS,   100, 20,   0 ;SWEET_SCENT
	move EFFECT_DEFENSE_DOWN_HIT,  100, STEEL,    PHYSICAL,  75, 15,  30 ;IRON_TAIL
	move EFFECT_ATTACK_UP_HIT,      50, STEEL,    PHYSICAL,  95, 35,  10 ;METAL_CLAW
	move EFFECT_ALWAYS_HIT,         70, FIGHTING, PHYSICAL, 100, 10,   0 ;VITAL_THROW
	move EFFECT_MORNING_SUN,         0, NORMAL,   STATUS,   100,  5,   0 ;MORNING_SUN
	move EFFECT_SYNTHESIS,           0, GRASS,    STATUS,   100,  5,   0 ;SYNTHESIS
	move EFFECT_MOONLIGHT,           0, FAIRY,    STATUS,   100,  5,   0 ;MOONLIGHT
	move EFFECT_HIDDEN_POWER,       70, NORMAL,   SPECIAL,  100, 15,   0 ;HIDDEN_POWER
	move EFFECT_NORMAL_HIT,        100, FIGHTING, PHYSICAL,  80,  5,   0 ;CROSS_CHOP
	move EFFECT_TWISTER,            40, DRAGON,   SPECIAL,  100, 20,  20 ;TWISTER
	move EFFECT_RAIN_DANCE,          0, WATER,    STATUS,    90,  5,   0 ;RAIN_DANCE
	move EFFECT_SUNNY_DAY,           0, FIRE,     STATUS,    90,  5,   0 ;SUNNY_DAY
	move EFFECT_DEFENSE_DOWN_HIT,   80, DARK,     PHYSICAL, 100, 15,  20 ;CRUNCH
	move EFFECT_MIRROR_COAT,         1, PSYCHIC,  SPECIAL,  100, 20,   0 ;MIRROR_COAT
	move EFFECT_PSYCH_UP,            0, NORMAL,   STATUS,   100, 10,   0 ;PSYCH_UP
	move EFFECT_PRIORITY_HIT,       80, NORMAL,   PHYSICAL, 100,  5,   0 ;EXTREMESPEED
	move EFFECT_ALL_UP_HIT,         60, ROCK,     SPECIAL,  100,  5,  10 ;ANCIENTPOWER
	move EFFECT_SP_DEF_DOWN_HIT,    80, GHOST,    SPECIAL,  100, 15,  20 ;SHADOW_BALL
	move EFFECT_FUTURE_SIGHT,      120, PSYCHIC,  SPECIAL,  100, 10,   0 ;FUTURE_SIGHT
	move EFFECT_DEFENSE_DOWN_HIT,   40, FIGHTING, PHYSICAL, 100, 15,  50 ;ROCK_SMASH
	move EFFECT_TRAP_TARGET,        35, WATER,    SPECIAL,   85, 15,   0 ;WHIRLPOOL
	move EFFECT_STRENGTH_SAP,        0, GRASS,    STATUS,   100, 10,   0 ;STRENGTH_SAP
	move EFFECT_FLINCH_HIT,         80, DARK,     SPECIAL,  100, 15,  20 ;DARK_PULSE
	move EFFECT_NORMAL_HIT,         80, DRAGON,   PHYSICAL, 100, 15,   0 ;DRAGON_CLAW
	move EFFECT_ACCURACY_DOWN_HIT,  65, STEEL,    SPECIAL,   85, 10,  30 ;MIRROR_SHOT
	move EFFECT_NORMAL_HIT,         85, DRAGON,   SPECIAL,  100, 15,   0 ;DRAGON_PULSE
	move EFFECT_NORMAL_HIT,         70, DARK,     PHYSICAL, 100, 15,   0 ;NIGHT_SLASH
	move EFFECT_PRIORITY_HIT,       40, ICE,      PHYSICAL, 100, 30,   0 ;ICE_SHARD
	move EFFECT_SP_DEF_DOWN_HIT,    80, STEEL,    SPECIAL,  100, 10,  10 ;FLASH_CANNON
	move EFFECT_SP_DEF_DOWN_HIT,    90, BUG,      SPECIAL,  100, 10,  10 ;BUG_BUZZ
	move EFFECT_RECOIL_HIT,        120, FLYING,   PHYSICAL, 100, 15,   0 ;BRAVE_BIRD
	move EFFECT_LEECH_HIT,          75, FIGHTING, PHYSICAL, 100, 10,   0 ;DRAIN_PUNCH
	move EFFECT_ALL_UP_HIT,         60, BUG,      SPECIAL,  100,  5,  10 ;SILVER_WIND
	move EFFECT_NORMAL_HIT,         70, GHOST,    PHYSICAL, 100, 15,   0 ;SHADOW_CLAW
	move EFFECT_SPEED_DOWN_HIT,     60, GROUND,   PHYSICAL, 100, 20, 100 ;BULLDOZE
	move EFFECT_NORMAL_HIT,         80, GRASS,    PHYSICAL, 100, 15,   0 ;SEED_BOMB
	move EFFECT_STOMP,             100, DRAGON,   PHYSICAL,  75, 10,  20 ;DRAGON_RUSH
	move EFFECT_PRIORITY_HIT,       40, STEEL,    PHYSICAL, 100, 30,   0 ;BULLET_PUNCH
	move EFFECT_FLINCH_HIT,         80, PSYCHIC,  PHYSICAL,  90, 15,  20 ;ZEN_HEADBUTT
	move EFFECT_POISON_HIT,         80, POISON,   PHYSICAL, 100, 20,  30 ;POISON_JAB
	move EFFECT_NORMAL_HIT,         80, GROUND,   PHYSICAL,  95, 10,   0 ;DRILL_RUN
	move EFFECT_LEECH_HIT,          50, FAIRY,    SPECIAL,  100, 10,   0 ;DRAININGKISS
	move EFFECT_NORMAL_HIT,         40, FAIRY,    SPECIAL,  100, 30,   0 ;FAIRY_WIND
	move EFFECT_SP_DEF_DOWN_2,       0, STEEL,    STATUS,    85, 40,   0 ;METAL_SOUND
	move EFFECT_ALWAYS_HIT,         40, FAIRY,    SPECIAL,  100, 15,   0 ;DISARM_VOICE
	move EFFECT_RECOIL_HIT,         90, ELECTRIC, PHYSICAL, 100, 15,   0 ;WILD_CHARGE
	move EFFECT_NORMAL_HIT,        120, GRASS,    PHYSICAL,  85, 10,   0 ;POWER_WHIP
	move EFFECT_NORMAL_HIT,         80, FAIRY,    SPECIAL,  100, 10,   0 ;DAZZLINGLEAM
	move EFFECT_HYPER_BEAM,        150, NORMAL,   PHYSICAL,  90,  5,  10 ;GIGA_IMPACT
	move EFFECT_SP_ATK_UP_2,         0, DARK,     STATUS,   100, 20,   0 ;NASTY_PLOT
	move EFFECT_ATTACK_DOWN_HIT,    90, FAIRY,    PHYSICAL,  90, 10,  10 ;PLAY_ROUGH
	move EFFECT_SP_DEF_DOWN_HIT,   120, FIGHTING, SPECIAL,   70,  5,  10 ;FOCUS_BLAST
	move EFFECT_CONFUSE_HIT,        60, WATER,    SPECIAL,  100, 20,  20 ;WATER_PULSE
	move EFFECT_POISON_HIT,        120, POISON,   PHYSICAL,  80,  5,  30 ;GUNK_SHOT
	move EFFECT_POISON_HIT,         95, POISON,   SPECIAL,  100, 10,  10 ;SLUDGE_WAVE
	move EFFECT_SP_DEF_DOWN_HIT,    90, GROUND,   SPECIAL,  100, 10,  10 ;EARTH_POWER
	move EFFECT_FLINCH_HIT,         80, STEEL,    PHYSICAL, 100, 15,  30 ;IRON_HEAD
	move EFFECT_CONFUSE_HIT,        75, BUG,      SPECIAL,  100, 15,  10 ;SIGNAL_BEAM
	move EFFECT_FLINCH_HIT,         85, ICE,      PHYSICAL,  90, 10,  30 ;ICICLE_CRASH
	move EFFECT_NORMAL_HIT,        100, ROCK,     PHYSICAL,  80,  5,   0 ;STONE_EDGE
	move EFFECT_FLINCH_HIT,         80, PSYCHIC,  SPECIAL,  100, 20,  10 ;EXTRASENSORY
	move EFFECT_NORMAL_HIT,         80, BUG,      PHYSICAL, 100, 15,   0 ;X_SCISSOR
	move EFFECT_PRIORITY_HIT,       40, WATER,    PHYSICAL, 100, 20,   0 ;AQUA_JET
	move EFFECT_NORMAL_HIT,         90, WATER,    PHYSICAL,  90, 10,   0 ;AQUA_TAIL
	move EFFECT_ALWAYS_HIT,         60, FLYING,   PHYSICAL, 100, 20,   0 ;AERIAL_ACE
	move EFFECT_ALWAYS_HIT,         60, GRASS,    SPECIAL,  100, 20,   0 ;MAGICAL_LEAF
	move EFFECT_SP_DEF_DOWN_HIT,    90, GRASS,    SPECIAL,  100, 15,  10 ;ENERGY_BALL
	move EFFECT_NORMAL_HIT,         80, ROCK,     SPECIAL,  100, 20,   0 ;POWER_GEM
	move EFFECT_ACCURACY_DOWN_HIT,  65, GROUND,   SPECIAL,   85, 10,  30 ;MUD_BOMB
	move EFFECT_HEX,                65, GHOST,    SPECIAL,  100, 10,   0 ;HEX
	move EFFECT_VENOSHOCK,          65, POISON,   SPECIAL,  100, 10,   0 ;VENOSHOCK
	move EFFECT_HURRICANE,         110, FLYING,   SPECIAL,   70, 10,  30 ;HURRICANE
	move EFFECT_FIRE_FANG,          65, FIRE,     PHYSICAL,  95, 15,  10 ;FIRE_FANG
	move EFFECT_ICE_FANG,           65, ICE,      PHYSICAL,	 95, 15,  10 ;ICE_FANG
	move EFFECT_THUNDER_FANG,       65, ELECTRIC, PHYSICAL,  95, 15,  10 ;THUNDER_FANG
	move EFFECT_DRACO_FANG,         65, DRAGON,   PHYSICAL,	 95, 15,  10 ;DRACO_FANG
	move EFFECT_ALL_DOWN_HIT,       80, STEEL,    PHYSICAL,  80,  5,  30 ;STEEL_SLICE
	move EFFECT_SLEEP_HIT,          75, FAIRY,    PHYSICAL, 100, 15,  10 ;PIXIE_PUNCH
	move EFFECT_BURN,                0, FIRE,     STATUS,    85, 15,   0 ;WILL_O_WISP
	move EFFECT_SP_ATK_DOWN_HIT,	95, FAIRY,    SPECIAL,	100, 15,  30 ;MOONBLAST
	move EFFECT_FLARE_BLITZ,       120, FIRE,     PHYSICAL,	100, 15,  10 ;FLARE_BLITZ
	move EFFECT_NORMAL_HIT,         90, NORMAL,   SPECIAL,	100, 10,   0 ;HYPER_VOICE
	move EFFECT_FLINCH_HIT,         75, FLYING,   SPECIAL,   95, 15,  30 ;AIR_SLASH
	move EFFECT_AVALANCHE,          60, ICE,      PHYSICAL, 100, 10,   0 ;AVALANCHE
	move EFFECT_AVALANCHE,          60, FIGHTING, PHYSICAL, 100, 10,   0 ;REVENGE
	move EFFECT_HYPER_BEAM,        150, ROCK,     PHYSICAL,  90,  5,   0 ;ROCK_WRECKER
	move EFFECT_MULTI_HIT,          25, ICE,      PHYSICAL, 100, 30,   0 ;ICICLE_SPEAR
	move EFFECT_NORMAL_HIT,         70, FIRE,     SPECIAL,	100, 15,   0 ;FLAME_BURST
	move EFFECT_PARALYZE_HIT,       80, ELECTRIC, SPECIAL,	100, 15,  30 ;DISCHARGE
	move EFFECT_DEFENSE_UP_2,        0, STEEL,    STATUS,	100, 15,   0 ;IRON_DEFENSE
	move EFFECT_MULTI_HIT,          25, ROCK,     PHYSICAL,  90, 10,   0 ;ROCK_BLAST
	move EFFECT_MULTI_HIT,          25, GRASS,    PHYSICAL,	100, 30,   0 ;BULLET_SEED
	move EFFECT_NORMAL_HIT,         90, GRASS,    PHYSICAL,	100, 15,   0 ;PETAL_BLIZZ
	move EFFECT_SOLARBEAM,         125, GRASS,    PHYSICAL, 100, 10,   0 ;SOLAR_BLADE
	move EFFECT_BURN_HIT,          100, FIRE,     SPECIAL,	 50,  5, 100 ;INFERNO
	move EFFECT_RECOIL_HIT,        120, GRASS,    PHYSICAL,	100, 15,   0 ;WOOD_HAMMER
	move EFFECT_AVALANCHE,          50, DARK,     PHYSICAL, 100, 10,   0 ;PAYBACK
	move EFFECT_SP_ATK_DOWN_HIT,    55, DARK,     SPECIAL,	 95, 15, 100 ;SNARL
	move EFFECT_FLINCH_HIT,         30, GHOST,    PHYSICAL,	100, 15,  30 ;ASTONISH
	move EFFECT_ALWAYS_HIT,         60, GHOST,    PHYSICAL, 100, 20,   0 ;SHADOW_PUNCH
	move EFFECT_NORMAL_HIT,         70, NORMAL,   SPECIAL,	100, 15,   0 ;ROUND_M
	move EFFECT_NORMAL_HIT,         95, GROUND,   PHYSICAL,  95, 10,   0 ;HIHORSEPOWER
	move EFFECT_SPEED_DOWN_HIT,     55, GROUND,   SPECIAL,   95, 15, 100 ;MUD_SHOT
	move EFFECT_TRAP_TARGET,        35, GROUND,   PHYSICAL,	 85, 15,   0 ;SAND_TOMB
	move EFFECT_ALWAYS_HIT,         80, FIGHTING, SPECIAL,	100, 20,   0 ;AURA_SPHERE
	move EFFECT_HAMMER_ARM,        100, FIGHTING, PHYSICAL,  90, 10, 100 ;HAMMER_ARM
	move EFFECT_CLOSE_COMBAT,      120, FIGHTING, PHYSICAL, 100,  5, 100 ;CLOSE_COMBAT
	move EFFECT_SPEED_DOWN_HIT,     65, FIGHTING, PHYSICAL, 100, 20, 100 ;LOW_SWEEP
	move EFFECT_BULK_UP,             0, FIGHTING, STATUS,	100, 20,   0 ;BULK_UP
	move EFFECT_SUPERPOWER,        120, FIGHTING, PHYSICAL, 100, 5,  100 ;SUPERPOWER
	move EFFECT_ATTACK_UP_HIT,      40, FIGHTING, PHYSICAL, 100, 20, 100 ;POWERUPPUNCH
	move EFFECT_DRAGON_DANCE,        0, DRAGON,   STATUS,   100, 20,   0 ;DRAGON_DANCE
	move EFFECT_SHELL_SMASH,         0, NORMAL,   STATUS,   100, 15,   0 ;SHELL_SMASH
	move EFFECT_HONE_CLAWS,          0, DARK,     STATUS,   100, 15,   0 ;HONE_CLAWS
	move EFFECT_POISON_HIT,         50, POISON,   PHYSICAL, 100, 15,  50 ;POISON_FANG
	move EFFECT_SPEED_UP_HIT,       50, FIRE,     PHYSICAL, 100, 20, 100 ;FLAME_CHARGE
	move EFFECT_HAIL,                0, ICE,      STATUS,   100, 10,   0 ;HAIL
	move EFFECT_BRICK_BREAK,        75, FIGHTING, PHYSICAL, 100, 15,   0 ;BRICK_BREAK
	move EFFECT_QUIVER_DANCE,        0, BUG,      STATUS,   100, 20,   0 ;QUIVER_DANCE
	move EFFECT_ROOST,               0, FLYING,   STATUS,	100, 10,   0 ;ROOST
	move EFFECT_POISON_HIT,         70, POISON,   PHYSICAL, 100, 20,  10 ;CROSS_POISON
	move EFFECT_ALWAYS_HIT,         70, STEEL,    PHYSICAL, 100, 10,   0 ;SMART_STRIKE
	move EFFECT_POISON_HIT,        120, POISON,   SPECIAL,   80,  5,  30 ;BELCH
	move EFFECT_SP_DEF_DOWN_2_HIT,  40, POISON,   SPECIAL,  100, 20, 100 ;ACID_SPRAY
	move EFFECT_PARALYZE_HIT,       20, ELECTRIC, PHYSICAL,	100, 20, 100 ;NUZZLE
	move EFFECT_VOLT_TACKLE,       120, ELECTRIC, PHYSICAL, 100, 15,  10 ;VOLT_TACKLE
	move EFFECT_DEFENSE_DOWN_HIT,   75, NORMAL,   PHYSICAL,  95, 10,  50 ;CRUSH_CLAW
	move EFFECT_PLAY_NICE,          0, NORMAL,   STATUS,	100, 20,   0 ;PLAY_NICE
	move EFFECT_NORMAL_HIT,         60, FLYING,   SPECIAL,	 95, 25,   0 ;AIR_CUTTER
	move EFFECT_FORESIGHT,           0, NORMAL,   STATUS,	100, 40,   0 ;ODOR_SLEUTH
	move EFFECT_ATTACK_UP,           0, NORMAL,   STATUS,   100, 40,   0 ;HOWL
	move EFFECT_CIRCLE_THROW,       60, FIGHTING, PHYSICAL,  90, 10,   0 ;CIRCLE_THROW
	move EFFECT_NORMAL_HIT,         70, PSYCHIC,  PHYSICAL,	100, 20,   0 ;PSYCHO_CUT
	move EFFECT_DOUBLE_HIT,         40, DRAGON,   PHYSICAL,  90, 15,   0 ;DUAL_CHOP
	move EFFECT_PARALYZE_HIT,      100, FLYING,   PHYSICAL,	 85,  5,  30 ;BOUNCE
	move EFFECT_SPEED_UP_2,          0, ROCK,     STATUS,	100, 20,   0 ;ROCK_POLISH
	move EFFECT_LEVEL_DAMAGE,        1, STEEL,    PHYSICAL, 100,  5,   0 ;GYRO_BALL
	move EFFECT_HEAL,                0, NORMAL,   STATUS,   100, 10,   0 ;SLACK_OFF
	move EFFECT_DOUBLE_HIT,         35, NORMAL,   PHYSICAL,  90, 10,   0 ;DOUBLE_HIT_M
	move EFFECT_SP_ATK_UP_HIT,      50, ELECTRIC, SPECIAL,   90, 10,  70 ;CHARGE_BEAM
	move EFFECT_BURN_HIT,           85, FIRE,     PHYSICAL,  90, 10,  10 ;BLAZE_KICK
	move EFFECT_CIRCLE_THROW,       60, DRAGON,   PHYSICAL,  90, 10,   0 ;DRAGON_TAIL
	move EFFECT_OHKO,                0, ICE,      SPECIAL,   30,  5,   0 ;SHEER_COLD
	move EFFECT_NORMAL_HIT,         90, GRASS,    PHYSICAL, 100, 15,   0 ;LEAF_BLADE
	move EFFECT_SUCKER_PUNCH,       70, DARK,     PHYSICAL, 100,  5,   0 ;SUCKER_PUNCH
	move EFFECT_GRASS_KNOT,          1, GRASS,    SPECIAL,  100, 20,   0 ;GRASS_KNOT
	move EFFECT_GROWTH,              0, NORMAL,   STATUS,   100, 30,   0 ;WORK_UP
	move EFFECT_FURY_CUTTER,        40, NORMAL,   SPECIAL,  100, 15,   0 ;ECHOED_VOICE
	move EFFECT_ACCURACY_DOWN_HIT,  90, WATER,    SPECIAL,   85, 10,  30 ;MUDDY_WATER
	move EFFECT_BURN_HIT,           95, FIRE,     SPECIAL,   90, 10,  10 ;HEAT_WAVE
	move EFFECT_BURN_HIT,           80, FIRE,     SPECIAL,  100, 15,  30 ;LAVA_PLUME
	move EFFECT_NORMAL_HIT,         40, ROCK,     PHYSICAL, 100, 20,   0 ;STONE_BASH
	move EFFECT_PRIORITY_HIT,       40, GHOST,    PHYSICAL, 100, 30,   0 ;SHADOW_SNEAK
	move EFFECT_STOMP,              60, GRASS,    PHYSICAL, 100, 15,  30 ;NEEDLE_ARM
	move EFFECT_FLATTER,             0, DARK,     STATUS,   100, 15,   0 ;FLATTER
	move EFFECT_SLEEP,               0, GRASS,    STATUS,    55, 15,   0 ;GRASSWHISTLE
	move EFFECT_ALL_UP_HIT,         60, GHOST,    SPECIAL,  100,  5,  10 ;OMINOUS_WIND
	move EFFECT_HYPER_BEAM,        150, GRASS,    SPECIAL,   90,  5,   0 ;FRENZY_PLANT
	move EFFECT_HYPER_BEAM,        150, FIRE,     SPECIAL,   90,  5,   0 ;BLAST_BURN
	move EFFECT_HYPER_BEAM,        150, WATER,    SPECIAL,   90,  5,   0 ;HYDRO_CANNON
	move EFFECT_AQUA_RING,           0, WATER,    STATUS,   100, 20,   0 ;AQUA_RING
	move EFFECT_KNOCK_OFF,          65, DARK,     PHYSICAL, 100, 20,   0 ;KNOCK_OFF
	move EFFECT_U_TURN,             70, BUG,      PHYSICAL, 100, 20,   0 ;U_TURN
	move EFFECT_ACROBATICS,         55, FLYING,   PHYSICAL, 100, 15,   0 ;ACROBATICS
	move EFFECT_U_TURN,             70, ELECTRIC, SPECIAL,  100, 20,   0 ;VOLT_SWITCH
	move EFFECT_COIL,                0, POISON,   STATUS,   100, 20,   0 ;COIL
	move EFFECT_MULTI_HIT,          30, BUG,      PHYSICAL,  85, 10,   0 ;PINCIRFLURRY
	move EFFECT_SPEED_DOWN_HIT,    100, ROCK,     SPECIAL,   80, 10,  20 ;JURASSICBEAM
	move EFFECT_CONFUSE_HIT,       110, BUG,      SPECIAL,   85,  5,  10 ;SIGNAL_WAVE
;	move EFFECT_WAKE_UP_SLAP,       70, FIGHTING, PHYSICAL, 100, 10,   0 ;WAKE_UP_SLAP
