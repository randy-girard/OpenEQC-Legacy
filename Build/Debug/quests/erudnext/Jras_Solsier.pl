sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Welcome to the Temple of Divine Light.  We are the Peacekeepers. followers of Quellious.  If you are a paladin of this temple. you can assist us by showing a desire to [protect the peace].");
}
if($text=~/i desire to protect the peace/i){
quest::say("It was a fine decision.  We are in need of your services.  It seems there is a disturbance in Toxxulia Forest.  There are poachers from other nations who have sought to cause turbulence among the creatures there.  Will you help us [catch the poachers] or are you skeptical about this mission?");
}
if($text=~/i will help you to catch the poachers/i){
quest::say("The infidels are in Toxxulia Forest.  They have begun hunting the kobolds.  We have no love of the kobolds. but cannot allow the lands of Odus to be overrun by outsiders.  The ways of tranquility are balanced with harmony.  We will not allow chaos to take hold of our land.  Go and find these poachers.  Bring me their heads!!"); }
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
#END of FILE Zone:erudnext  ID:98041 -- Jras_Solsier 
