sub EVENT_SAY { 
 if($text=~/Hail/i){
	quest::say("Welcome to Irontoe's! The finest watering hole this side of Oggok! If you're looking for anything special and it ain't behind the bar. just ask. Maybe I can make it.");
 }
 if($text =~ /tumpy tonic/i) {
	#text is wrong:
	quest::say("I can make them, but I need a kiola nut and a flask of water. Kiola nuts can be found in the island chain in the Sea of Tears.");
 }
}

sub EVENT_ITEM {
 if($itemcount{13340} == 1 && $itemcount{13006} == 1) {
	#wrong text
	quest::say("Good work, let me brew up this tonic for you.");
	quest::summonitem(12114);
 }
}

#END of FILE Zone:kaladima  ID:5163 -- Tumpy_Irontoe 

