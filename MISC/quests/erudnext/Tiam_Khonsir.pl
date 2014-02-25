sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings. $name. Are you a follower of our order. the Deepwater Knights. servants of the Ocean Lord. Prexus?");
}
if($text=~/yes i am/i){
quest::say("That is good. $name. Our followers are few but our faith is strong. With the efforts of those few. our destiny may be reached in time. We must walk with perseverence and devotion. much like the tides that. over time. can destroy a mighty stone cliff. Have you [come to serve our Lord]. $name?");
}
if($text=~/i have come to serve our lord/i){
quest::say("Then I shall send you on a quest to prove your devotion. No doubt you have seen the vermin kobolds scuttling about the land as fleas upon a mangy dog. The kobolds have a lair on our continent from which they launch their wantonly destructive raids. You are to enter that lair and destroy as many of these dogs as you can. For each molar you bring me. you will receive praise. admiration. and perhaps some coin."); }
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
#END of FILE Zone:erudnext  ID:98051 -- Tiam_Khonsir 
