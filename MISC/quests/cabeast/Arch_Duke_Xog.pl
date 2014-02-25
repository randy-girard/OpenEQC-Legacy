sub EVENT_SAY { 
if($text=~/Hail/i){quest::say("These are the sacred unholy grounds of the Crusaders of Greenmist and the Scaled Mystics.  If you do not belong to us. you must leave this temple at once or learn great suffering in the name of Cazic-Thule."); }
}
sub EVENT_ITEM { 
 if($item1=="18205"){
	quest::say("Welcome into our brotherhood.  Know you that our way is the way of pain.  Do as we say and you shall climb the rungs of knighthood.  Listen well to the Lords of Pain within this temple and follow the words of the hierophants. for Cazic-Thule speaks to us through them.  Take this khukri.  It is the chosen weapon of the Crusaders and can deliver great pain unto our foes.  Go now and learn our ways.  Seek out Lord Gikzic.");
	quest::summonitem("5120");
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
#END of FILE Zone:cabeast  ID:87 -- Arch_Duke_Xog 

