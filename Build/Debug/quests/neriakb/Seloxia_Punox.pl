sub EVENT_SAY { 
if ($text=~/Hail/i){quest::say("You may speak if you are a member of this house of warriors. Let it be of something important. Do not waste my time. Or wait. Perhaps you are a young warrior. If you are I have a [little test] for you."); }
}
sub EVENT_ITEM { 
 if ($item1=="18751"){quest::say("Welcome to the Indigo Brotherhood. Hmmm. you're a bit scrawny. but we'll work with it. Here's your guild tunic. Defend Neriak and all her allies. For the time being this list includes our [new friends].Go see Yegek. one of our trainers. Hopefully he can mould you into something resembling a warrior.");
	quest::summonitem("13580");
	quest::exp("100");
 } else {
	if($class ne 'Warrior') {
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
#END of FILE Zone:neriakb  ID:41066 -- Seloxia_Punox 

