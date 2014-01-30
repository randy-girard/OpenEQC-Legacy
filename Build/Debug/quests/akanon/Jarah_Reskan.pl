sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings. child. Welcome to Gemchopper Hall. I trust that you are a [warrior]. or perhaps you are lost..?");
}
if($text=~/I am a warrior/i){
quest::say("That is good news! We gnomes are not known for our love of battle so it is always good to bring new blood into our ranks. We shall prove our worth as warriors to all other races. For now. there is much to do in Ak'Anon. There are [rogue clockworks] and the [cargo clockwork].");
}
if($text=~/what rogue clockworks?/i){
quest::say("The clockworks are the responsibility of Manik Compolten. Speak with him - I am sure he is here somewhere."); }
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
#END of FILE Zone:akanon  ID:55172 -- Jarah_Reskan 
