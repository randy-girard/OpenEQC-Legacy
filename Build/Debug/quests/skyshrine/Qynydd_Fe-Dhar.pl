#!/usr/bin/perl

# Skyshrine druid armor quests

sub EVENT_SAY {
    if($text=~/Hail/i) {
	quest::say("Greetings to you. I seek one who calls himself a druid. What do you call yourself, manling?");
    } elsif ($text=~/a druid/i) {
	quest::say("Good. I had hoped you were one. As nature's guardian, you fight the never-ending struggle against those who seek to defile it. It is an admirable quality and I wish to aid you. I will provide you with a cap, a tunic, sleeves, bracers, gloves, leggings and boots.");
    } elsif ($text=~/what boots/i) {
	quest::say("Even the swiftest feet need protection so I shall provide you with these. They should help. Acquire a pair of unadorned boots and a set of three crushed flame emeralds and a new set of boots will be yours.");
    } elsif ($text=~/what bracers/i) {
	quest::say("For a bracer I shall require an unadorned leather bracelet as well as three crushed opals. Do this and the reward shall be yours to keep.");
    } elsif ($text=~/what cap/i) {
	quest::say("I shall weave one of exceptional quality for you but you must gather the ingredients first. I require an unadorned leather cap and three crushed onyx sapphires.");
    } elsif ($text=~/what gloves/i) {
	quest::say("The gloves shall help protect you from the elements and harm. In order for me to complete them, I require a pair of unadorned leather gloves and three crushed lava rubies.");
    } elsif ($text=~/what leggings/i) {
	quest::say("As the roots support the mighty oak, so shall these leggings support you. Furnish me three chipped onyx sapphires and a pair of unadorned leather leggings.");
    } elsif ($text=~/what sleeves/i) {
	quest::say("As the bark protects the limbs of the tree, so shall these sleeves protect your arms. Bring me a pair of unadorned leather sleeves and three jaundice gems.");
    } elsif ($text=~/what tunic/i) {
	quest::say("You shall be a force of nature with this tunic. Once I have gained an unadorned leather tunic and three pieces of black marble, the item is yours.");
    }
}

sub EVENT_ITEM {
    if (plugin::check_handin(\%itemcount, 25805 => 3, 24963 => 1)) { # tunic
	quest::summonitem("31148");
    } elsif (plugin::check_handin(\%itemcount, 25815 => 3, 24965 => 1)) { # sleeves
	quest::summonitem("31149");	
    } elsif (plugin::check_handin(\%itemcount, 25827 => 3, 24964 => 1)) { # leggings
	quest::summonitem("31152");
    } elsif (plugin::check_handin(\%itemcount, 25840 => 3, 24969 => 1)) { # gloves
	quest::summonitem("31153");
    } elsif (plugin::check_handin(\%itemcount, 25841 => 3, 24968 => 1)) { # cap
	quest::summonitem("31147");
    } elsif (plugin::check_handin(\%itemcount, 25836 => 3, 24967 => 1)) { # bracers
	quest::summonitem("31150");
    } elsif (plugin::check_handin(\%itemcount, 25838 => 3, 24966 => 1)) { # boots
	quest::summonitem("31153");
    } else {
	plugin::return_items(\%itemcount);
	return 1;
    }
    quest::exp(100000);
    quest::faction(42,+75); # claws of veeshan
    quest::faction(362,+75); # yelinak
    quest::faction(189,-100); # zek
}
