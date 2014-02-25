#!/usr/bin/perl

# Skyshrine cleric armor quests

sub EVENT_SAY {
    if($text=~/Hail/i) {
	quest::say("Hail, most pious one. I sense the aura of your devotion and conviction and it is strong about you. A shame you are so short lived, mortal. But I see potential in you and for that I shall aid you in your calling if you are a cleric. Do you wish my aid?");
    } elsif ($text=~/your aid/i) {
	quest::say("Then I have a set of goals for you. Once you have achieved them, you shall be rewarded with a helm, a breastplate, armplates, bracers, gauntlets, greaves and boots. May they protect you from your enemies.");
    } elsif ($text=~/what boots/i) {
	quest::say("With your aid, I shall make a pair of fine boots for you. All that is needed are a pair of unadorned plate boots and three crushed flame emeralds.");
    } elsif ($text=~/what bracers/i) {
	quest::say("For the bracers, faithful one, I shall require the acquisition of an unadorned plate bracer as well as three crushed opals");
    } elsif ($text=~/what helm/i) {
	quest::say("I shall craft a helm for you but you must seek these items out for me first. I have need of an unadorned plate helmet and three pieces of crushed onyx sapphire.");
    } elsif ($text=~/what gauntlets/i) {
	quest::say("I will need a pair of unadorned gauntlets as well as three crushed lava rubies, so that I may make your reward.");
    } elsif ($text=~/what greaves/i) {
	quest::say("You shall acquire a pair of unadorned plate greaves and three chipped onyx sapphires for me. I await your return.");
    } elsif ($text=~/what armplates/i) {
	quest::say("Such lofty goals your kind sets for yourselves. But, that is the way of your kind, I suppose - to seek that which is the most difficult to attain. Bring to me a set of unadorned vambraces and three jaundice gems and you will receive your reward.");
    } elsif ($text=~/what breastplate/i) {
	quest::say("As your faith protects you, so shall this breastplate. I must have an unadorned breastplate and three pieces of black marble.");
    }
}

sub EVENT_ITEM {
    if (plugin::check_handin(\%itemcount, 25805 => 3, 24956 => 1)) { # tunic
	quest::summonitem("31141");
    } elsif (plugin::check_handin(\%itemcount, 25815 => 3, 24958 => 1)) { # sleeves
	quest::summonitem("31142");	
    } elsif (plugin::check_handin(\%itemcount, 25827 => 3, 24957 => 1)) { # leggings
	quest::summonitem("31145");
    } elsif (plugin::check_handin(\%itemcount, 25840 => 3, 24962 => 1)) { # gloves
	quest::summonitem("31144");
    } elsif (plugin::check_handin(\%itemcount, 25841 => 3, 24961 => 1)) { # cap
	quest::summonitem("31140");
    } elsif (plugin::check_handin(\%itemcount, 25836 => 3, 24960 => 1)) { # bracers
	quest::summonitem("31143");
    } elsif (plugin::check_handin(\%itemcount, 25838 => 3, 24959 => 1)) { # boots
	quest::summonitem("31146");
    } else {
	plugin::return_items(\%itemcount);
	return 1;
    }
    quest::exp(100000);
    quest::faction(42,+75); # claws of veeshan
    quest::faction(362,+75); # yelinak
    quest::faction(189,-100); # zek
}
