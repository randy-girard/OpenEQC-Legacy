sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Welcome to the Shrine of Bertoxxulous!  You appear to be [new to the shrine].  I do not remember seeing you around.");
}
if($text=~/i am new to the shrine./i){
quest::say("New blood to spread Bertoxxulous' disease?   We presently need the help of a [young shadowknight].   There are certain deeds which must be carried out.");
}
if($text=~/i am a young shadowknight./i){
quest::say("Then let your supreme task be the extermination of the Priests of Life.  Know that they threaten the will of our Lord Bertoxxulous.   For every fallen paladin and cleric of the Temple of Life. you shall rise within our ranks.  So... do you [loathe paladins]?");
}
if($text=~/i loathe paladins./i){
quest::say("As do we all.  The paladins of Qeynos come from either the Hall of Thunder or the Temple of Life.  We have put a bounty upon their heads.  Destroy these knights and return either the Order of Thunder or the prayer beads of these inferior men.  There has even been a report from [Commander Kane].");
}
if($text=~/who is commander kane?/i){
quest::say("Kane Bayle is the Commander of the Qeynos Guard.  He has found it advantageous to befriend the Bloodsabers.  We share a [common goal].  He assists us in many ways.  He has some new information to reveal.  Go and tell him you are a Bloodsaber. Do not speak with him while he is on duty!!");
}
if($text=~/what common goal?/i){
quest::say("Kane Bayle and the leaders of this shrine all wish to overthrow the rule of Antonius Bayle.  He. for power. and we for the glory of Bertoxxulous.  From this city. our diseased lord shall appear and tread across the land spitting death from his mouth and deforming the land.  His glory shall be eternal!"); }
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
#END of FILE Zone:qcat  ID:45070 -- Garuc_Anehm 
