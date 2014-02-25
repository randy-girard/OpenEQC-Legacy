sub EVENT_SAY {
 if($text =~ /hail/i) {
	quest::emote('bows with elegance and grace. You can see her arms rippling with veins. Greetings. We are the Swifttails. We are the harnessers of the elements. We are the tails of discipline. To be be rebirthed into our caste is great indeed.');
 }
 if($text=~/yes i have my bracer/i){
	quest::say("Very good. Broodling.  Display your adornment with pride. so that the enemies of the Brood may see our might as your rip through the weak will of their ranks.  Now be gone from my sight.");
 }
 if($text =~ /earn the shackle of rock/i) {
	quest::emote('strikes within inches of your snout with amazing speed. The Shackle of Rock is your interest? Then learn well our ways and prepare yourself. If the stone embraces your wrist then you are ready indeed. To complete the second rung you must find for me the [Fists of Talon].');
 }
 if($text =~ /Fists of Talon/i) {
	quest::emote('points to the Court Chronicler. All that is known of Talon has been chronicled. Should you obtain the fists then you shall hand them to me. This shall earn you the Shackle of Rock.');
 }
}

sub EVENT_ITEM {
 #do all other handins first, then let it do disciplines
 if($itemcount{12797} == 1 && $itemcount{12798} == 1 && $itemcount{12799} == 1) {
 	quest::emote("shakes her head. Tisk, tisk, tisk. Talon's Fists were more than this. Only all of his fists shall earn you the Shackle of Rock and bring you closer to the third rung.");
 	quest::emote("removes a crudley hewn shackle. This is yours. It is one of the keys to the third rung. I see that you are truly a great monk and have studied your disciplines well. I have need of one as you. I have heard of [troubles with an outlander].");
 	quest::summonitem(4193);
 } else {
	if($class ne 'Monk') {
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
#END of FILE Zone:cabeast  ID:3431 -- Master_Niska 

