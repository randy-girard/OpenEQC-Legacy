sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings, young one. I am Manik Compolten, High Watchman. Are you a [new warrior] or an [experienced fighter]?");
}
if($text=~/i am a new warrior/i){
quest::say("It is always good to see new blood amongst the Gemchoppers. I have a small task for you. Take this keycard. I will give you only one at a time. Use each to obtain blackboxes for the C series clockworks. I am sure you are familiar with the clockworks. When you are done, bring them all to me. Let me know if you need another keycard.");
quest::summonitem("13844");
}
if($text=~/i am an experienced fighter/i){
quest::say("Good.  I require your talents to destroy rogue clockworks.  After we sent the clockworks to destroy the Asylum of the Mad we found some of the clockworks went haywire and never returned.  We must destroy them, not for the safety of the people, but to keep our technology from falling into the hands of any other nation. Go to the Steamfont Mountains and return their rogue blackboxes to me."); }
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
#END of FILE Zone:akanon  ID:55155 -- Manik_Compolten 
