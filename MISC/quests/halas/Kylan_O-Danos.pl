sub EVENT_ITEM { 
 if($itemcount{18760} == 1){
	quest::say("Greetin's! We are the mighty Wolves o' the North. protectors o' Halas. and we must work hard t' keep it safe fer our citizens. Here is our tunic. it identifies ye as a proud warrior o' this great city. Let's get started with yer training. then. shall we?");
	quest::summonitem("13511");
	quest::faction("10103","1");
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
#END of FILE Zone:halas  ID:29057 -- Kylan_O`Danos 

