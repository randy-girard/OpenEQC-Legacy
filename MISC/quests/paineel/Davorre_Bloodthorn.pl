sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings.  Perhaps within that husk you call a body there is some worth?  Are you [experienced] in your craft, young one, or are you a [neonate]?");
}
if($text=~/i am neonate/i){
quest::say("Well then, child. I may still have a task for you.  Will you [make use of your pathetic cowardice], then, eh?");
}
if($text=~/i want to make use of my pathetic cowardice/i){
quest::say("I see.  This will not be the first time for you, I am sure.  Take this list to Auhrik Siet'ka.  His writing has become illegible in his old age, but he shall clarify what it is he needs you to do.  Do as he says, child, and perhaps you will prove yourself a bit more worthy than the rotting flesh he will most likely have you return to him.");
quest::summonitem("14041");
}
if($text=~/i will make use of my pathetic cowardice/i){
quest::say("I see.  This will not be the first time for you, I am sure.  Take this list to Auhrik Siet'ka.  His writing has become illegible in his old age, but he shall clarify what it is he needs you to do.  Do as he says, child, and perhaps you will prove yourself a bit more worthy than the rotting flesh he will most likely have you return to him.");
quest::summonitem("14041");
}
if($text=~/i am experienced/i){
quest::say("Ahhhh, a youth doth approach me with such confidence!  That is to be commended in and of itself.  Ordinarily, I would turn you away without a second glance, but perhaps you can be of some use.  Tell me, child, are you [willing to assist] me in a small, yet important, task?");
}
if($text=~/i am willing to assist/i){
quest::say("Good, child.  Deliver this note to Veisha Fathomwalker.  You shall find her patrolling the outer regions of Toxxulia Forest.  I trust that you will keep your eyes to yourself in this matter.  Now go, and please travel within the veil of night, so you will not be seen by those whose minds are still clouded with delusions of Erudin's grandeur.");
quest::summonitem("12998"); }
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
#END of FILE Zone:paineel  ID:75110 -- Davorre_Bloodthorn 
