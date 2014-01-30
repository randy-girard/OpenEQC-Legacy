sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail!  Welcome to the Hall of Truth.  We. the Knights of Truth. are all the hope this city has of loosening the grip of Lucan D'lere and his militia.  I seek a young knight to [serve the will of the Truthbringer].");
}
if($text=~/what serve the will of the truthbringer/i){
quest::say("Shame on you.  To set foot into the Hall of Truth and not know for whom it was built.  Still. it is never too late to see the light.  Mithaniel Marr is our deity.  He is the Truthbringer.  By living our lives in valor and crushing all those who suppress His beliefs. we serve Him."); }
}
sub EVENT_ITEM { 
 if($itemcount{18818} == 1){
	quest::faction("322","1");
	quest::faction("304","-1");
	quest::faction("10103","1");
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
#END of FILE Zone:freportn  ID:8074 -- Kalatrina_Plossen 

