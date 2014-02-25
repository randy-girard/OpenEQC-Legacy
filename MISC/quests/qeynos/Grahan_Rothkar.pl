sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail, $name! What business do you have in the pens of the Qeynos Arena? Have you a report of the [escaped catman]?");
}
if($text=~/what escaped catman/i){
quest::say("We had a catman imprisoned here for use in future gladiator battles. He escaped. In the process, he bit off my assistant's hand which held the key to pen number seven. I now seek to hire a warrior to [retrieve key seven].");
}
if($text=~/i want to retrieve key seven/i){
quest::say("The Steel Warriors have no cause to dislike you, but you have yet to truly prove your worth to this guild."); }
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
#END of FILE Zone:qeynos  ID:1073 -- Grahan_Rothkar 
