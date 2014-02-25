sub EVENT_SAY { 
 if ($text=~/Hail/i){
	quest::emote("halts his chanting.");
	quest::say("You dare to interrupt me? You had best have a good reason. I care not for small talk.");
 }
 if ($text=~/new revenant/i) {
	quest::say("Yes. You are. You shall do as I command. Take this. It is incomplete and must be ready for the emperor within the half season. You must find the [Four Missing Gems]. When you have them, then you will have to Quest for the [Grand Forge of Dalnir]. Within it's fire, all shall combine. Return the Sceptre to me with your Revenant Skullcap. Go. ");  
 }
}

sub EVENT_ITEM { 
 if ($itemcount{18204} == 1){
 	quest::say("Another apprentice has reached rebirth. You now have become one with the Brood of Kotiz. We study the ancient writing of Kotiz. Through his writing we have found the power of the dark circles. Listen well to the scholars within this tower and seek the [Keepers Grotto] for knowledge of our spells. This drape shall be the sign to all Iksar that you walk with the Brood. Now go speak with Xydoz.");
	quest::summonitem("12407");
	quest::exp("100");
 }
}

#END of FILE Zone:cabwest  ID:2517 -- Harbinger_Glosk 

