sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("So. you think you have what it takes to be a Scout of Tunare? Come back with 2 [gold] and 2 [rusty dagger]s and I'll make it worth your while."); }
}

sub EVENT_ITEM { 
 if($itemcount{7007} == 2){
	quest::say("Nice. where's the rest?");
	quest::say("Well. well. I didn't think you could do it. Here's your cut and don't be surprised that it's not much because it's your first lesson. Remember. the smaller the operation. the bigger the share. and the richest rogues have the tightest lips.");
	quest::summonitem("7021");
	quest::givecash("0","5","0","0");
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
#END of FILE Zone:gfaydark  ID:54087 -- Tylfon 

