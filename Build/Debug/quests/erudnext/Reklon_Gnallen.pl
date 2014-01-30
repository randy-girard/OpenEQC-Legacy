sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail to you friend.  Seek you knowledge or atonement in this temple of peace?");
}
if($text=~/i seek knowledge/i){
quest::say("Many are the things I could speak to you of.  Have you any specific interest?");
}
if($text=~/i seek atonement/i){
quest::say("Yes.  Many are those who enter these halls seeking the forgiveness. the atonement of a god.  By turning their spirit against whatever wrong they have committed they may be able to receive redemption in the eyes of their diety.  Many seek such a thing. but few truly have the strength of spirit to attain it."); }
}

sub EVENT_ITEM {
 #do all other handins first, then let it do disciplines
 #if($itemcount{} == 1) {
 #} else {
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
 #}
}
#END of FILE Zone:erudnext  ID:98042 -- Reklon_Gnallen 
