sub EVENT_SAY { 
if ($text=~/Hail/i){quest::say("Hail."); }
}
sub EVENT_ITEM { 
 if ($item1=="18705"){quest::say("Thanks.");
	quest::summonitem("13518");
	quest::exp("100");
 } else {
	if($class ne 'Rogue') {
		quest::say("You are not a member of my guild. I will not train you!");
		quest::summonitem($item1) if($item1);
		quest::summonitem($item2) if($item2);
		quest::summonitem($item3) if($item3);
		quest::summonitem($item4) if($item4);
		return;
	}
	#assume it is a discipline tome...
	quest::traindisc($item1) if(quest::isdisctome($item1));
	quest::traindisc($item2) if(quest::isdisctome($item2));
	quest::traindisc($item3) if(quest::isdisctome($item3));
	quest::traindisc($item4) if(quest::isdisctome($item4));
 }
}
#END of FILE Zone:akanon  ID:55159 -- Kaxon_Frennor 

