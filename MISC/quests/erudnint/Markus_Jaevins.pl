sub EVENT_SAY { if($text=~/Hail/i){quest::say("I am the overseer of the great city of Erudin.  You will address me in the proper manner.  HAIL!!"); }
}
sub EVENT_ITEM { 
	if ($item1=="18728"){quest::say("Welcome. young one! I see you show interest in the circle of magic. Nowhere upon Norrath will you find a greater school than this - the Gatecallers. You shall wear this robe as a sign that you have begun the training of this circle. Remember. the power of the Gatecaller is the power of summoning. Go find Vasile. he will help teach you the basics of summoning. Good luck, friend!");
quest::summonitem("13548");
quest::exp("100"); }
}
#END of FILE Zone:erudnint  ID:24035 -- Markus_Jaevins 

