sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings!  You must be a stranger or [new to the Hall].  If you are a stranger. be warned that these halls are intended for the Ebon Mask only. If you are found to be a member of another house. you just may feel the sting of a blade in your back.");
}
if($text=~/i am new to the hall/i){
quest::say("Then I am glad to make your acquaintance. Have you ever been to Freeport?  If not. how would you like to go?  It is a test of your cunning we wish.  Are you prepared to risk your young life?  Are you [ready to venture to Freeport]?");
}
if($text=~/i am ready to venture to freeport/i){
quest::say("Find a way to the port of Freeport.  Seek out Giz Dinree.  She is usually near the shores at night.  She is your contact. Tell her you were [sent by TanI].  She will fill you in on your mission.  Good luck.  Do not waste time practicing your skills. Go as you are."); }
}

sub EVENT_ITEM {
 #do all other handins first, then let it do disciplines
 #if($itemcount{} == 1) {
 #} else {
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
 #}
}
#END of FILE Zone:neriakc  ID:42001 -- Tani_N`Mar 
