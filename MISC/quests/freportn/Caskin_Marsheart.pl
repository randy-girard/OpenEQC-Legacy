sub EVENT_ITEM { 
 if($itemcount{18747} == 1){
	quest::say("Welcome to the guild. here's your guild tunic. Now. let's get to work.");
	quest::summonitem("13571");
	quest::faction("322","1");
	quest::faction("165","-1");
	quest::faction("149","-1");
	quest::faction("316","1");
 } else {
	if($class ne 'Bard') {
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
#END of FILE Zone:freportn  ID:8066 -- Caskin_Marsheart 

