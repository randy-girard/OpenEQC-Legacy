sub EVENT_SAY {
 if($text =~ /hail Bygloirn Omorden'/i) {
	quest::say("Hail! I long to speak with a minstrel. I am curious about what has gone on beyond our borders here. Are you a bard? If not then I have no use for you.");
 }
 if($text =~ /I am a bard/i) {
	quest::say("So troubadour, what news and stories have you from the New World? Oh, I forget my manners. We shall exchange talk another time. You seek something do you not? A new outfit perhaps?");
 }
 if($text =~ /new outfit/i) {
	quest::say("Well then, I have just what you need. Now, my terms of");
 }
 if($text =~ /helm/i) {
	quest::say("A brand new shiny helm shall be yours once I have an ancient tarnished plate helmet and three pieces of crushed coral. May the audience swoon in your presence.");
 }
 if($text =~ /breastplate/i) {
	quest::say("I have need of an ancient tarnished breastplate and three");
 }
 if($text =~ /armplates?/i) {
	quest::say("A gorgeous pair of armplates shall be yours once you have");
 }
 if($text =~ /bracers?/i) {
	quest::say("A pair of bracers shall be yours upon receipt of an ancient");
 }
 if($text =~ /gauntlets/i) {
	quest::say("It would be a shame if your hands were to be injured and not be able to play your instruments wouldn't it? I shall craft some gauntlets so that your nimble digits remain intact. Bring me a pair of ancient tarnished plate gauntlets as well as three crushed topaz.");
 }
 if($text =~ /greaves/i) {
	quest::say("Some new greaves would do you some good. The pair you have now looks quite stained and worn. Nevermind, fetch me a pair of ancient tarnished plate greaves and three flawed sea sapphires.");
 }
 if($text =~ /boots/i) {
	quest::say("A fancy pair of boots you want is it? Yes, I can see the pair you have now looks a bit worn from running so much. All I require is a set of three crushed pieces of black marble and a pair of ancient tarnished plate boots.");
 }
}



