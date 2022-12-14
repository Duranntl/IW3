// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
/*QUAKED actor_enemy_merc_AT_RPG7 (1.0 0.25 0.0) (-16 -16 0) (16 16 72) SPAWNER FORCESPAWN UNDELETABLE ENEMYINFO
defaultmdl="body_complete_sp_spetsnaz_boris"
"count" -- max AI to ever spawn from this spawner
SPAWNER -- makes this a spawner instead of a guy
FORCESPAWN -- will try to delete an AI if spawning fails from too many AI
UNDELETABLE -- this AI (or AI spawned from here) cannot be deleted to make room for FORCESPAWN guys
ENEMYINFO -- this AI when spawned will get a snapshot of perfect info about all enemies
*/
main()
{
	self.animTree = "";
	self.team = "axis";
	self.type = "human";
	self.accuracy = 0.2;
	self.health = 150;
	self.weapon = "rpg";
	self.secondaryweapon = "ak47";
	self.sidearm = "beretta";
	self.grenadeWeapon = "fraggrenade";
	self.grenadeAmmo = 0;

	self setEngagementMinDist( 768.000000, 512.000000 );
	self setEngagementMaxDist( 1024.000000, 1500.000000 );

	switch( codescripts\character::get_random_character(7) )
	{
	case 0:
		character\character_sp_spetsnaz_boris::main();
		break;
	case 1:
		character\character_sp_spetsnaz_demetry::main();
		break;
	case 2:
		character\character_sp_spetsnaz_vlad::main();
		break;
	case 3:
		character\character_sp_spetsnaz_yuri::main();
		break;
	case 4:
		character\character_sp_spetsnaz_collins::main();
		break;
	case 5:
		character\character_sp_spetsnaz_geoff::main();
		break;
	case 6:
		character\character_sp_spetsnaz_derik::main();
		break;
	}
}

spawner()
{
	self setspawnerteam("axis");
}

precache()
{
	character\character_sp_spetsnaz_boris::precache();
	character\character_sp_spetsnaz_demetry::precache();
	character\character_sp_spetsnaz_vlad::precache();
	character\character_sp_spetsnaz_yuri::precache();
	character\character_sp_spetsnaz_collins::precache();
	character\character_sp_spetsnaz_geoff::precache();
	character\character_sp_spetsnaz_derik::precache();

	precacheItem("rpg");
	precacheItem("ak47");
	precacheItem("beretta");
	precacheItem("fraggrenade");
}
