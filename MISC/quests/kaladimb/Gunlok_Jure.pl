sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail, $name!  Bow before the greatness of the Clerics of Underfoot!  It is good to be a paladin in such an order as ours - to fight the good fight and defend Kaladim from the evil and undead.  If you be a paladin, then I pray you find the [courage to battle the undead].");
}
if($text=~/i find the courage to battle the undead/i){
quest::say("Yes!!  To battle the undead is our greatest call.  There has been a rise in the number of dwarven skeletons seen in the Butcherblocks.  If you are a true member of this order. I shall reward you for the return of four bone chips.  We shall defend our land from evil!"); }
}
sub EVENT_ITEM { 
 if($itemcount{13073} > 0 && $itemcount{13073} < 4 ){
	quest::say("I called for the remains of four skeletons.");
 } elsif($itemcount{13073} == 4){
	quest::say("You have done well.  We thank you for your deed with this humble reward.  The power behind the raising of our dead shall soon be found.  You will earn more respect with more bone chips.  I only wish you could assist in the return of the [remains of Cromil].");
	quest::summonitem("2116");
	quest::givecash("7","10","0","0");
	quest::faction("10803","1");
 } else {
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
 }
}
#END of FILE Zone:kaladimb  ID:67028 -- Gunlok_Jure 

