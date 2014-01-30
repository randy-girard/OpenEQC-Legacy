sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Welcome to the Church of Underfoot.  Please open your soul to the greatness of Brell Serilis.  May he guide you in all your future endeavors. And may your soles long for the [Soil of Underfoot].");
}
if($text=~/what soil of underfoot/i){
quest::say("The Clerics of Underfoot have yet to see your faith directed towards our wills.  Perhaps you should assist Master Gunlok Jure in the crusade against the undead."); }
}
sub EVENT_ITEM { 
if($itemcount{18765} == 1){
quest::say("Welcome to the Underfoot Cathedral. I am High Priestess Ghalea. Here is your guild tunic. Now. let's get you started helping us spread the will of Brell.");
quest::summonitem("13514");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("10803","1"); }
}
#END of FILE Zone:kaladimb  ID:67024 -- Priestess_Ghalea 

