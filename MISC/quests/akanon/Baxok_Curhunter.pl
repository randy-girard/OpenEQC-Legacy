sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail, $name. I invite you to serve the mighty state of Ak'Anon by becoming a Gemchopper. We gnomes are not known for our warrior skills, but those few who endure and survive to become elite amongst our warriors soon find that the technology of the gnomes has found its way into our halls. You must be a [new recruit] or [an outsider], perhaps?");
}
if($text=~/i am a new recruit/i){
quest::say("Well, good to make your acquaintance, $name. Maybe someday you shall be a great Watchman. Until then, I have a task for you. Will you [serve the Crown] or has a yellow streak appeared upon your back?");
}
if($text=~/i will serve the crown/i){
quest::say("You are too inexperienced. Leave that business to someone more worldly.");
}
if($text=~/i am an outsider/i){
quest::say("I should have guessed as much. You look the part."); }
}

sub EVENT_ITEM { 
 if($itemcount{18770} == 1){
	quest::summonitem("13520");
	quest::faction("Not_Found","1");
	quest::faction("Not_Found","1");
	quest::faction("Not_Found","1");
	quest::faction("303","-1");
	quest::faction("373","-1");
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
#END of FILE Zone:akanon  ID:55173 -- Baxok_Curhunter 

