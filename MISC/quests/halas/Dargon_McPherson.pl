sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail. mighty $name! I assume ye must be a [warrior o' the Wolves]. Why else would ye approach a trainer such as meself. then?");
}
if($text=~/i am warrior o/i){
quest::say("Aye. 'tis as I thought. I'm glad t' see we've warriors such as yerself amongst the Wolves o' the North. Lately. Kylan's been allowing too many scrawny warriors in. methinks. Nor have they fared well in Everfrrost. Many frreeze to death. ye know... Will ye assist me and [deliver an elixir to young warriors] in Everfrost?");
}
if($text=~/i will deliver an elixir to young warriors/i){
quest::say("Ach. 'tis good o' ye! Take this bottle of elixir to Everfrost Peaks. Find Talin O'Donal. He'll take the first sip. and then instruct ye on who else ye need to find. Do that. and I'll give ye a fine reward when ye return the empty elixir bottle. Good luck. then. Don't die.");
quest::summonitem("13241"); }
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
#END of FILE Zone:halas  ID:29055 -- Dargon_McPherson 
