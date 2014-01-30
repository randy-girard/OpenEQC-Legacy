sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings. traveler! I am Captain Ashlan of the Highpass Guards. I keep watch over my men and the [volunteers] here at the East Gate. It's been a busy [job] here lately. with the [orc raids] and all.");
}
if($text=~/what job/i){
quest::say("We're short-handed around here. as usual. Would you like to help us out with the [Volunteer Watch]?");
}
if($text=~/i would like to join the volunteer watch/i){
quest::say("The Volunteer Watch guards the entry gates of Highpass. Since the [orc raids] are becoming more and more frequent. it's a busy job. But it can pay well. depending on how many [orcs] you slay.");
}
if($text=~/what orc raids/i){
quest::say("One of the orc clans of Kithicor Woods has been trying to expand their territory. Small orc raiding parties are frequently rushing the East Gate. Without the [Volunteer Watch] helping us out. Highpass would probably be overrun by those vile beasts.");
}
if($text=~/what orcs/i){
quest::say("One of the orc clans of Kithicor Woods has been trying to expand their territory. Small orc raiding parties are frequently rushing the East Gate. Without the [Volunteer Watch] helping us out. Highpass would probably be overrun by those vile beasts."); }
}
#END of FILE Zone:highpass  ID:5014 -- Captain_Ashlan 

