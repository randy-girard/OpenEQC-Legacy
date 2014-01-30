sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail, $name!  Spend your time wisely in the city of Qeynos.  Do not let your mind wander to thoughts of bravado or crime.  My guards can easily put to rest any outbreaks.  Good day to you, citizen!"); }
}
sub EVENT_ITEM { 
 if($itemcount{13915} == 1){
	quest::say("Very good!  One less gnoll the people of Qeynos need to fear.  Here is your bounty as promised.");
	quest::summonitem("10070","1");
	quest::faction("10102","-1");
	quest::faction("10108","-1");
 } elsif($itemcount{13915} == 2){
	quest::say("Very good!  One less gnoll the people of Qeynos need to fear.  Here is your bounty as promised.");
	quest::summonitem("10070","1");
	quest::faction("10102","-1");
	quest::faction("10108","-1");
 } elsif($itemcount{13915} == 4){
	quest::say("Very good!  One less gnoll the people of Qeynos need to fear.  Here is your bounty as promised.");
	quest::summonitem("10070","1");
	quest::faction("10102","-1");
	quest::faction("10108","-1");
 } elsif($itemcount{10070} == 2 && $itemcount{13915} == 3){
	quest::say("Very good!  One less gnoll the people of Qeynos need to fear.  Here is your bounty as promised.");
	quest::summonitem("10070","1");
	quest::faction("10102","-1");
	quest::faction("10108","-1");
 } elsif($itemcount{6012} == 1){
	quest::say("Very good!  One less gnoll the people of Qeynos need to fear.  Here is your bounty as promised.");
	quest::summonitem("10070","1");
	quest::faction("10102","-1");
	quest::faction("10108","-1");
 } elsif($itemcount{3053} == 4){
	quest::say("Very good!  One less gnoll the people of Qeynos need to fear.  Here is your bounty as promised.");
	quest::summonitem("10070","1");
	quest::faction("10102","-1");
	quest::faction("10108","-1");
 } elsif($itemcount{20104} == 4){
	quest::say("Very good!  One less gnoll the people of Qeynos need to fear.  Here is your bounty as promised.");
	quest::summonitem("10070","1");
	quest::faction("10102","-1");
	quest::faction("10108","-1");
 } else {
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
 }
}
#END of FILE Zone:qeynos  ID:1077 -- Captain_Tillin 

