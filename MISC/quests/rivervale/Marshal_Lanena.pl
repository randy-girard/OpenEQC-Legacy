sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hello. $name.  I am Lanena Wickystick. marshal of all Vale concerns.  If there are any troubles brewing in our fine town which concern the Guardians of the Vale. please inform me.  You must be a [new deputy] or are you an [outsider]?");
}
if($text=~/I am a new deputy/i){
quest::say("You are in good standing with the Guardians of the Vale. Continue with your good work and then we may speak.");
quest::say("It is good to see such fine stock in the ranks of the Guardians.  Being new. there is much to learn. in battle and in life itself.  If you are not presently obligated. we have need of you here in the hollow.  There seems to be a [small problem].");
}
if($text=~/I am an outsider/i){
quest::say("Well. then!! You should not be in here.  This place is restricted to all outsiders.  You will leave at once!  Thank you and good day.");
}
if($text=~/what small problem/i){
quest::say("For months. Fiddy Bobick has petitioned the marshals to assist him with a problem he has.  With the addition of new deputies such as yourself. we can now give him the assistance he requires.  Just go down to Bobick's shop near the lake.  Tell him I sent you."); }
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
#END of FILE Zone:rivervale  ID:19061 -- Marshal_Lanena 
