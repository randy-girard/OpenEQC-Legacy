#!/usr/bin/perl

# Skyshrine monk armor quests

sub EVENT_SAY {
    if($text=~/Hail/i) {
	quest::say("Greetings to you. I seek one that has chosen the path of monkhood. What do you call yourself?");
    } elsif ($text=~/a monk/i) {
	quest::say("Good. I had hoped you were one. As seeker of the way you are in constant training to push yourself to your physical and mental limits. It is an admirable quality and I wish to aid you. I will provide you with a cap, a tunic, sleeves, bracers, gloves, leggings and boots.");
    } elsif ($text=~/what boots/i) {
	quest::say("Your feet are as hard as any stone and as swift as a coiled serpent but even the swiftest feet require protection so I shall provide you with these. They should help. Acquire a pair of unadorned leather boots and three crushed pieces of black marble.");
    } elsif ($text=~/what bracers/i) {
	quest::say("For a bracer I shall require three crushed flame emeralds and an unadorned leather bracelet. Bring me these items and the reward shall be yours to keep.");
    } elsif ($text=~/what cap/i) {
	quest::say("I shall weave one of exceptional quality for you but you must gather the items first. I require an unadorned leather cap and three pieces of crushed coral.");
    } elsif ($text=~/what gloves/i) {
	quest::say("Your hands are like the wind, everflowing and moving. Subtle one moment, then a howling wind raining blow upon blow to your foes. These gloves shall aid you. In order for me to complete them, I require a pair of unadorned leather gloves and three crushed topaz.");
    } elsif ($text=~/what leggings/i) {
	quest::say("The leggings shall protect you, as the valley shelters the still pool within it from the howling winds. Furnish a pair of unadorned leather leggings and three flawed sea sapphires.");
    } elsif ($text=~/what sleeves/i) {
	quest::say("As the mighty stone that parts the flow of water, so shall these sleeves divert harm against you. Bring me a pair of unadorned leather sleeves and three flawed emeralds.");
    } elsif ($text=~/what tunic/i) {
	quest::say("You shall be an imposing force with this tunic. Solid as the unmoving mountains, it shall protect you. Once I have gained a set of three flawless diamonds and an unadorned leather tunic.");
    }
}

sub EVENT_ITEM {
    if (plugin::check_handin(\%itemcount, 25814 => 3, 24970 => 1)) { # tunic
	quest::summonitem("31190");
    } elsif (plugin::check_handin(\%itemcount, 25821 => 3, 24972 => 1)) { # sleeves
	quest::summonitem("31191");	
    } elsif (plugin::check_handin(\%itemcount, 25825 => 3, 24971 => 1)) { # leggings
	quest::summonitem("31194");
    } elsif (plugin::check_handin(\%itemcount, 25832 => 3, 24976 => 1)) { # gloves
	quest::summonitem("31193");
    } elsif (plugin::check_handin(\%itemcount, 25831 => 3, 24975 => 1)) { # cap
	quest::summonitem("31189");
    } elsif (plugin::check_handin(\%itemcount, 25838 => 3, 24974 => 1)) { # bracers
	quest::summonitem("31192");
    } elsif (plugin::check_handin(\%itemcount, 25833 => 3, 24973 => 1)) { # boots
	quest::summonitem("31195");
    } else {
	plugin::return_items(\%itemcount);
	return 1;
    }
    quest::exp(100000);
    quest::faction(42,+75); # claws of veeshan
    quest::faction(362,+75); # yelinak
    quest::faction(189,-100); # zek
}
