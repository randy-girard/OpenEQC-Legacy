sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("The bloody Kromrif ambushed me! I escaped. but I am near death. They'll be tracking me down to finish me off at any moment. Without [help]. I'm as good as dead.");
}
if($text=~/what kind of help?/i){
quest::say("Thank Brell! I hear them approaching from just over that hill! Slay the leader. Ghrek. and give me his elixir.");
}
if($text=~/What help?/i){
quest::say("Thank Brell! I hear them approaching from just over that hill! Slay the leader. Ghrek. and give me his elixir."); }
}
#END of FILE Zone:eastwastes  ID:116008 -- Tain_Hammerfrost 

