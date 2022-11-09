RACE_ALL          			= 0x1ffffff
RACE_WARRIOR      			= 0x1
RACE_SPELLCASTER  			= RACE_WARRIOR
RACE_FAIRY        			= RACE_WARRIOR
RACE_FIEND        			= RACE_WARRIOR
RACE_ZOMBIE       			= RACE_WARRIOR
RACE_MACHINE      			= RACE_WARRIOR
RACE_AQUA         			= RACE_WARRIOR
RACE_PYRO         			= RACE_WARRIOR
RACE_ROCK         			= RACE_WARRIOR
RACE_WINGEDBEAST  			= RACE_WARRIOR
RACE_PLANT        			= RACE_WARRIOR
RACE_INSECT       			= RACE_WARRIOR
RACE_THUNDER      			= RACE_WARRIOR
RACE_DRAGON       			= RACE_WARRIOR
RACE_BEAST        			= RACE_WARRIOR
RACE_BEASTWARRIOR 			= RACE_WARRIOR
RACE_DINOSAUR     			= RACE_WARRIOR
RACE_FISH         			= RACE_WARRIOR
RACE_SEASERPENT   			= RACE_WARRIOR
RACE_REPTILE      			= RACE_WARRIOR
RACE_PSYCHIC      			= RACE_WARRIOR
RACE_DIVINE       			= RACE_WARRIOR
RACE_CREATORGOD   			= RACE_WARRIOR
RACE_WYRM         			= RACE_WARRIOR
RACE_CYBERSE      			= RACE_WARRIOR
RACE_CYBORG       			= RACE_WARRIOR
RACE_MAGICALKNIGHT			= RACE_WARRIOR
RACE_HIGHDRAGON   			= RACE_WARRIOR
RACE_OMEGAPSYCHIC 			= RACE_WARRIOR
RACE_CELESTIALWARRIOR 		= RACE_WARRIOR
RACE_GALAXY       			= RACE_WARRIOR
RACES_BEAST_BWARRIOR_WINGB 	= RACE_BEAST + RACE_BEASTWARRIOR + RACE_WINGEDBEAST

ATTRIBUTE_EARTH  = 0x1
ATTRIBUTE_WATER  = 0x2
ATTRIBUTE_FIRE   = 0x4
ATTRIBUTE_WIND   = 0x8
ATTRIBUTE_LIGHT  = 0x10
ATTRIBUTE_DARK   = 0x20
ATTRIBUTE_DIVINE = 0x40
ATTRIBUTE_ALL    = ATTRIBUTE_EARTH|ATTRIBUTE_WATER|ATTRIBUTE_FIRE|ATTRIBUTE_WIND|ATTRIBUTE_LIGHT|ATTRIBUTE_DARK|ATTRIBUTE_DIVINE

INFERIOR_ATTRIBUTE={
	[ATTRIBUTE_WATER]=ATTRIBUTE_FIRE,
	[ATTRIBUTE_WIND]=ATTRIBUTE_WATER,
	[ATTRIBUTE_DARK]=ATTRIBUTE_WIND,
	[ATTRIBUTE_EARTH]=ATTRIBUTE_DARK,
	[ATTRIBUTE_LIGHT]=ATTRIBUTE_EARTH,
	[ATTRIBUTE_FIRE]=ATTRIBUTE_LIGHT,
}
SUPERIOR_ATTRIBUTE={
	[ATTRIBUTE_WATER]=ATTRIBUTE_WIND,
	[ATTRIBUTE_WIND]=ATTRIBUTE_DARK,
	[ATTRIBUTE_DARK]=ATTRIBUTE_EARTH,
	[ATTRIBUTE_EARTH]=ATTRIBUTE_LIGHT,
	[ATTRIBUTE_LIGHT]=ATTRIBUTE_FIRE,
	[ATTRIBUTE_FIRE]=ATTRIBUTE_WATER,
}