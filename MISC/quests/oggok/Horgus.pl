sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("What!!? You [Craknek] or you [pest]?");
}
if($text=~/i am craknek/i){
quest::say("Good. Me not bash you.  You help Horgus and Crakneks.  Go smash lizards.  Bring four tails.  Greenbloods think they get all lizard tails.  We take first.  Taste good.  You bring four tails.  Me give you tings.  Me gives armur.  Now go!!");
}
if($text=~/i am pest/i){
quest::say("Bah!! You go join Greenbloods. You weak."); }
}

sub EVENT_ITEM {
 #do all other handins first, then let it do disciplines
 #if($itemcount{} == 1) {
 #} else {
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
 #}
}
#END of FILE Zone:oggok  ID:49042 -- Horgus 
