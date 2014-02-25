sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Unless you intend to [make yourself useful]. do not bother me.  I await the return of our Lord. Cazic-Thule.  He comes. and I shall be the first to greet Him.  I will train you. if need be. for He looks upon those who aid Him kindly.  If you are not here for training. return to your meditations or bother someone else.");
}
if($text=~/i want to make myself useful/i){
quest::say("One of our spies has reported a sighting of Malik Zaren. a courier of [the High Council].  He was seen resting at an inn called 'Golden Roosters' in High Pass Hold and is en route to Erudin Palace. He may be carrying a message containing information of great value to us.  Hunt him down and return to me with the letter he carries. I will reward you for this task.");
}
if($text=~/what high council/i){
quest::say("The High Council is the governing board of Erudin. our sworn enemies.  Beware of these types. they will not look upon you warmly.");
}
if($text=~/I intend to make myself useful/i){
quest::say("One of our spies has reported a sighting of Malik Zaren. a courier of [the High Council].  He was seen resting at an inn called 'Golden Roosters' in High Pass Hold and is en route to Erudin Palace. He may be carrying a message containing information of great value to us.  Hunt him down and return to me with the letter he carries. I will reward you for this task.");
}
if($text=~/i wish to make myself usefull/i){
quest::say("One of our spies has reported a sighting of Malik Zaren. a courier of [the High Council].  He was seen resting at an inn called 'Golden Roosters' in High Pass Hold and is en route to Erudin Palace. He may be carrying a message containing information of great value to us.  Hunt him down and return to me with the letter he carries. I will reward you for this task."); }
}

sub EVENT_ITEM {
 #do all other handins first, then let it do disciplines
 #if($itemcount{} == 1) {
 #} else {
	if($class ne 'Shadowknight') {
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
#END of FILE Zone:paineel  ID:75109 -- Shevra_Kollintar 
