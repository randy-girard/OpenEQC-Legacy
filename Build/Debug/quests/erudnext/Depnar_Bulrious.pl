sub EVENT_SAY { 
if($text=~/Hail/i){quest::say("Hail. $name ! I am the master of the paladins among the Peacekeepers. Have you [joined] the harmony of the Peacekeepers] or are you merely a visitor?"); }
if($text=~/joined/i){quest::say("Then go and speak with the other Peacekeepers. Do your part to promote the words of Quellious."); }
}
sub EVENT_ITEM { 
 if($item1=="18726" ){
	quest::say("Welcome to the Temple of Divine Light. I am Master Bulrious. Here. we study and spread the will of Quellious. Here is your guild tunic. Go find Jras Solsier. he will get you started with your first lesson.");
	quest::summonitem("13546");
	quest::exp("100");
 } else {
	if($class ne 'Paladin') {
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
#END of FILE Zone:erudnext  ID:98062 -- Depnar_Bulrious 

