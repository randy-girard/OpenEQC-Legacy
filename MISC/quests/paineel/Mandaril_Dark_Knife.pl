sub EVENT_SAY { 
if($text=~/Hail/i){quest::say("Desist in your prattle.  If you want idle chitchat. talk to someone else."); }
}
sub EVENT_ITEM { 
 if ($item1=="18017"){quest::say("You are welcomed into the fold. Now go out. and prove yourself. young one. You have much to learn about the Dark Truth.");
	quest::summonitem("13573");
	quest::exp("100");
 } else {
	if($class ne 'Shadowknight') {
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
#END of FILE Zone:paineel  ID:75111 -- Mandaril_Dark_Knife 

