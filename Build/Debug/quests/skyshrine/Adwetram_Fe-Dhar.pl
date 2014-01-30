#!/usr/bin/perl

# Skyshrine paladin armor quests

sub EVENT_SAY {
    if($text=~/Hail/i) {
	quest::say("I wish to speak only to the knights called paladins. If you are what I seek do you wish to partake of my quests?");
    } elsif ($text=~/to partake/i) {
	quest::say("Excellent. By serving my cause, you in turn will further your own. I require certain components to aid me and if you bring them to me, I shall reward you for your honorable service. You may choose from among these items: a helm, a breastplate, armplates, bracers, gauntlets, greaves, and boots.");
    } elsif ($text=~/what boots/i) {
	quest::say("A pair of boots you shall have once you have brought me a pair of unadorned plate boots, and three pieces of crushed black marble.");
    } elsif ($text=~/what bracers/i) {
	quest::say("Bracers for the mighty? Retrieve these components and I shall forge the item for you. Bring me three crushed flame emeralds and an unadorned plate bracer.");
    } elsif ($text=~/what helm/i) {
	quest::say("All I require are an unadorned plate helmet and three pieces of crushed coral. This should be a small task for one such as you. Go now and I shall await your return.");
    } elsif ($text=~/what gauntlets/i) {
	quest::say("Mighty gauntlets to smite your foes for the glory of the greater good! It is no easy task but I shall require a pair of unadorned plate gauntlets as well as three crushed topaz.");
    } elsif ($text=~/what greaves/i) {
	quest::say("Sturdy are the pillars that support the temple. I shall make you just as strong with these leggings. Gather unadorned plate greaves and three flawed sea sapphires.");
    } elsif ($text=~/what armplates/i) {
	quest::say("So, a pair of armplates is what you require? Well, I require unadorned plate vambraces and three flawed emeralds before you may receive it.");
    } elsif ($text=~/what breastplate/i) {
	quest::say("As the resolve of your faith protects you, so shall this breastplate. All that is required are three flawless diamonds and an unadorned breastplate. Do this quickly so that you may return to the field of battle.");
    }
}

sub EVENT_ITEM {
    if (plugin::check_handin(\%itemcount, 25814 => 3, 24956 => 1)) { # tunic
	quest::summonitem("31120");
    } elsif (plugin::check_handin(\%itemcount, 25821 => 3, 24958 => 1)) { # sleeves
	quest::summonitem("31121");	
    } elsif (plugin::check_handin(\%itemcount, 25825 => 3, 24957 => 1)) { # leggings
	quest::summonitem("31124");
    } elsif (plugin::check_handin(\%itemcount, 25832 => 3, 24962 => 1)) { # gloves
	quest::summonitem("31123");
    } elsif (plugin::check_handin(\%itemcount, 25831 => 3, 24961 => 1)) { # cap
	quest::summonitem("31119");
    } elsif (plugin::check_handin(\%itemcount, 25838 => 3, 24960 => 1)) { # bracers
	quest::summonitem("31122");
    } elsif (plugin::check_handin(\%itemcount, 25833 => 3, 24959 => 1)) { # boots
	quest::summonitem("31125");
    } else {
	plugin::return_items(\%itemcount);
	return 1;
    }
    quest::exp("100000");
    quest::faction(42,+75); # claws of veeshan
    quest::faction(362,+75); # yelinak
    quest::faction(189,-100); # zek
}
