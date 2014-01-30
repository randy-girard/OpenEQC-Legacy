#!/usr/bin/perl

# Skyshrine bard armor quests

sub EVENT_SAY {
    if($text=~/Hail/i) {
	quest::say("Hail! What news and stories have you from the New World? Perhaps if you are a bard you can spin me stories of those lands. Oh, I forget my manners. We shall exchange talk another time. You seek something, do you not? A new outfit perhaps?");
    } elsif ($text=~/a new outfit/i) {
	quest::say("Well, then, I have just what you need. Now, my terms of payment are thus, you gather some things for me and in return I shall craft you the finest armor a bard has ever seen! A new outfit comprised of a helm, breastplate, armplates, bracers, gauntlets, greaves, and boots shall make you the envy of your peers, my little friend.");
    } elsif ($text=~/what boots/i) {
	quest::say("A fancy pair of boots you want, is it? Yes, I can see the pair you have now looks a bit worn from running so much. All I require are a pair of unadorned plate boots and three crushed pieces of black marble.");
    } elsif ($text=~/what bracers/i) {
	quest::say("A pair of bracers shall be yours upon receipt of an unadorned plate bracer and three crushed flame emeralds. May your songs never falter during a tactical retreat.");
    } elsif ($text=~/what helm/i) {
	quest::say("A brand new shiny helm shall be yours once I have an unadorned plate helmet and three pieces of crushed coral. May the audience swoon in your presence.");
    } elsif ($text=~/what gauntlets/i) {
	quest::say("It would be a shame if your hands were to be injured wouldn't it? I shall craft some gauntlets so that your nimble digits remain intact. Bring me a pair of unadorned plate gauntlets as well as three crushed topaz.");
    } elsif ($text=~/what greaves/i) {
	quest::say("Some new greaves would do you some good. The pair you have now looks quite stained and worn. Fetch me a pair of unadorned plate greaves and three flawed sea sapphires.");
    } elsif ($text=~/what armplates/i) {
	quest::say("A gorgeous pair of armplates shall be yours once you have retrieved a set of three flawed emeralds and a pair of unadorned plate vambraces. The detail and craftsmanship are stunning!");
    } elsif ($text=~/what breastplate/i) {
	quest::say("I have need of an unadorned breastplate and three flawless diamonds. Find these for me and I shall craft you a breastplate, minstrel. May it protect you from unruly audiences with rotten vegetables.");
    }
}

sub EVENT_ITEM {
    if (plugin::check_handin(\%itemcount, 25814 => 3, 24956 => 1)) { # tunic
	quest::summonitem("31134");
    } elsif (plugin::check_handin(\%itemcount, 25821 => 3, 24958 => 1)) { # sleeves
	quest::summonitem("31135");	
    } elsif (plugin::check_handin(\%itemcount, 25825 => 3, 24957 => 1)) { # leggings
	quest::summonitem("31138");
    } elsif (plugin::check_handin(\%itemcount, 25832 => 3, 24962 => 1)) { # gloves
	quest::summonitem("31137");
    } elsif (plugin::check_handin(\%itemcount, 25831 => 3, 24961 => 1)) { # cap
	quest::summonitem("31133");
    } elsif (plugin::check_handin(\%itemcount, 25838 => 3, 24960 => 1)) { # bracers
	quest::summonitem("31136");
    } elsif (plugin::check_handin(\%itemcount, 25833 => 3, 24959 => 1)) { # boots
	quest::summonitem("31139");
    } else {
	plugin::return_items(\%itemcount);
	return 1;
    }
    quest::exp(100000);
    quest::faction(42,+75); # claws of veeshan
    quest::faction(362,+75); # yelinak
    quest::faction(189,-100); # zek
}
