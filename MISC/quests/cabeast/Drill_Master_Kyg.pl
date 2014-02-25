sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Welcome. Welcome!!  Time to train.  Time to fight.  Time to serve the Iksar Empire.  You will need weapons.  I have the [footman pike] for all new recruits to earn.");
}
if($text=~/what footman pike?/i){
quest::say("A footman pike is what you need.  A footman pike is what you get. but earn it you will.  You must [slay many beasts] to prove to us that you are a true warrior.  Fail and you will be exiled to live with the Forsaken.");
}
if($text=~/I will slay many beasts/i){
quest::say("Yes.  You will slay or you will be slain.  Take this footman's pack and fill it you will.  Fill it with [weapons of our foes].  When all are combined. the full footman's pack shall be returned to me along with your militia pike.  Do this and earn your footman pike and then we may have a true mission for you.");
}
if($text=~/what weapons of our foes?/i){
quest::say("Yes.  You need to know the weapons required.  Fill the pack with javelins.  Froglok bounder and goblin hunter javelins.  Two of each.");
 }
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
#END of FILE Zone:cabeast  ID:1113 -- Drill_Master_Kyg 

