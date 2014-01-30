sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail. good citizen!  You have entered the Hall of Truth.  What is it you seek?  Many citizens come to request aid in dealing with the local rogues or the oppression of our sworn enemies. the Freeport Militia.  A few valiant ones have been [summoned to the Hall of Truth].");
}
if($text=~/i have been summoned to the hall of truth/i){
quest::say("Work on the ways of valor before we discuss such things. You are on the righteous path of the Truthbringer. but there is more work to do."); }
}
sub EVENT_ITEM { 
 if($itemcount{14018} == 1){
	quest::summonitem("12144");
	quest::faction("322","1");
	quest::faction("304","-1");
	quest::faction("10103","1");
 } elsif($itemcount{12144} == 1 && $itemcount{13865} == 1){
	quest::faction("322","1");
	quest::faction("304","-1");
	quest::faction("10103","1");
 } elsif($itemcount{13866} == 1){
	quest::summonitem("18828");
	quest::givecash("0","0","6","0");
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
#END of FILE Zone:freportn  ID:8036 -- Merko_Quetalis 

