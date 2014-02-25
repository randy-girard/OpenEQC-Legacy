sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Don't be bothered by that crazy gnome. He won't hurt you. He's just a little out of it today. I'm sure if he had some [mushrooms] it'd calm him down.'");
}
if($text=~/what mushrooms/i){
quest::say("Reiker and his brother are always looking for fungus covered shrooms. They love to mix it into their stew. I must admit. it is very tasty.'"); }
}
#END of FILE Zone:dawnshroud  ID:174087 -- Sedona_Raines 

