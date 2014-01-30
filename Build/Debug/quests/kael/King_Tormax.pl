#!/usr/bin/perl

sub EVENT_SAY {
    if ($faction < 5) { # Require greater and indifferent faction
	if ($text=~/hail/i) {
	    quest::say("Greetings, $race. You know who I am, but I only vaguely know of you. My purpose is simple, I will rule these lands like my father, and my grandfather before him. All tasks but two are inconsequential to me.");
	} elsif ($text=~/tasks/i) {
	    quest::say("The tasks are simple, $race. I wish the death of the other 'powers' of this frozen waste land. If you are able to destroy either of my mortal foes, bring me proof of your exploits and you will be known as the hero of Kael Drakkel.");
	} elsif ($text=~/powers/i) {
	    quest::emote("laughs deeply");
	    quest::say("I speak of the foolish old dragon Yelinak and that pitiful Dain Frostreaver.");
	}
    }
}

sub EVENT_ITEM {
    if ($faction < 5) { # Require greater and indifferent faction
	if (plugin::check_handin(\%itemcount, 30501 => 1)) { ## Dain head
	    quest::emote("laughs deeply as he takes the bloody head then gives you your reward.");
	    quest::faction(49,-100); # -coldain
	    quest::faction(67,-100); # -dain
	    quest::faction(189,+75); # +zek
	    quest::faction(179,+75); # +tormax
	    quest::summonitem(25858);
	    quest::exp(200000);
	} elsif (plugin::check_handin(\%itemcount, 24984 => 1)) { ## Yelinak head
	    quest::emote("laughs deeply as he takes the bloody head then gives you your reward.");
	    quest::faction(42,-100); # -claws of veeshan
	    quest::faction(362,-100); # -yelinak
	    quest::faction(189,+75); # +zek
	    quest::faction(179,+75); # +tormax
	    quest::summonitem(25857);
	    quest::exp(200000);
	} else {
	    quest::say("I do not need this little one");
	    plugin::return_items(\%itemcount);
	}
    } else {
	quest::say("I do not know you well enough to entrust you with such an item, yet. ($faction)");
	plugin::return_items(\%itemcount);
    }
}
