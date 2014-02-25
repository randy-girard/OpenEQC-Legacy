sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings!  I am Timtok Tonsmith. My brother Ranvigoz and I are two of the finest smiths this side of Kaladim.  If you are interested. we will happily [resize] your [crafted armor] down to a more manageable size.");
}
if($text=~/what resize/i){
quest::say("I resize crafted gauntlets. vambraces. helms or boots.  My brother resizes crafted bracers. greaves. pauldruns or breastplates. Just give me a piece of armor and I will resize it for you.");
}
if($text=~/what crafted armor/i){
quest::say("Crafted armor is made by the Meadowgreen smiths. They can be found in the southern part of the Karanas.");
}
if($text=~/how resize/i){
quest::say("I resize crafted gauntlets. vambraces. helms or boots.  My brother resizes crafted bracers. greaves. pauldruns or breastplates. Just give me a piece of armor and I will resize it for you."); }
}
#END of FILE Zone:commons  ID:21054 -- Timtok_Tonsmith 

