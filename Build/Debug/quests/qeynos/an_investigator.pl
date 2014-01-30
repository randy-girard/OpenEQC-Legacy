#an investigator in qeynos

sub EVENT_SAY {
 if($text =~ /first suspect/i) {
	quest::say("The first suspect was last seen near the shop called Fireprides.");
	#quest::unique_spawn(1183,0,0,$x+10,$y+10,$z+10);
 }
 if($text =~ /Follow me/i) {
	quest::say("Right, let's get going.'");
	quest::follow($userid);
 }
 if($text =~ /Give me a confession document/i) {
	quest::say("Here you are.'");
	quest::summonitem(2344);
 }
 if($text =~ /second suspect/i) {
	quest::say("The second suspect was sighted below the Grounds of Fate.");
	#quest::unique_spawn(1201,0,0,$x+10,$y+10,$z+10);
 }
 if($text =~ /third suspect/i) {
	quest::say("The last suspect has been known to hang around that low life known as Raz the Rat.");
	#quest::unique_spawn(1197,0,0,$x+10,$y+10,$z+10);
 }
}

sub EVENT_ITEM {
	if ($itemcount{18289} == 1) {
		quest::say("Very well, let's get to work. I assume you have read the briefing and committed it to memory. This is how you will be tested. I shall play the part of student and you shall play the master who directs me. I promise I won't make it easy on you either, we want only the best. We'll see how you do and then I'll decide if you are worthy to wear the badge or not."); 
		quest::follow($userid);
	}
	if ($itemcount{2369} == 1 && $itemcount{2394} == 1 && $itemcount{2279} == 1) {
		quest::say("You have done our city a great service and helped to bring several criminals to justice this day! Wear this Investigator's Badge with pride! Speak again with Vegalys Keldrane, he may have information about [advancing further] in rank.");
		quest::summonitem(2386);
		quest::sfollow();
		#faction better: 'AntoniusBayle'
		#faction better: 'GuardsofQeynos'
		#faction worse: 'RingofScale'
		#faction worse: 'KaneBayle'
		#faction better: 'MerchantsofQeynos'
	}
}



