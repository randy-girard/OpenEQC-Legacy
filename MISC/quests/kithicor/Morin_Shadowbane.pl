sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail. $name!  I am the leader of this beleaguered troop of rangers.  Even though the once fair Kithicor slowly succumbs to the [darkness] at hand. we shall not abandon the woods without a fight.");
}
if($text=~/what darkness/i){
quest::say("The denizens of these woods are slowly being overrun by dark fiends and shadowed men.  As valiantly as we have fought. our numbers dwindle.  We know very little about our aggressors. but if we [acquire some information] or perhaps [fine weapons]. then we may yet have a chance to retake the woods once more.");
}
if($text=~/what fine weapons/i){
quest::say("My soldiers are valiant. but poorly equipped.  I have heard of a magical weapon of great power. some call it the ebony blade.  Amongst the frogloks there can be found a minotaur who wields this sword of might.  If you are a ranger and could provide me with this sword. I would gladly exchange it with my own meager weapon.  If you prefer. you may attempt to [acquire some information] for us instead.");
}
if($text=~/i want to acquire some information/i){
quest::say("Your tracking skills are invaluable to our cause. brave $name.  Our scouts have reported sightings of a ghoul messenger.  They have spotted him traveling between Kithicor and an undead camp in the Plains of Karana.  They have attempted to track the monster and obtain any strategic documentation he may be carrying.  Perhaps you can succeed where others have failed.  Perhaps you may even earn my personal short sword."); }
}

sub EVENT_ITEM {
 #do all other handins first, then let it do disciplines
 #if($itemcount{} == 1) {
 #} else {
	if($class ne 'Ranger') {
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
#END of FILE Zone:kithicor  ID:20081 -- Morin_Shadowbane 
