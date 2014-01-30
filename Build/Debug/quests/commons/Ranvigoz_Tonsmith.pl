sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail. I am Ranvigoz Tonsmith.  My brother Timtok and I are two of the finest smiths this side of Kaladim.  If you are interested. we will happily [resize] your [crafted armor] down to a more manageable size.");
}
if($text=~/what resize/i){
quest::say("I resize crafted bracers. greaves. pauldruns or breastplates.  My brother resizes crafted gauntlets. vambraces. helms or boots.  Just give me a piece of armor and I will resize it for you.");
}
if($text=~/what crafted armor/i){
quest::say("Crafted armor is made by the Meadowgreen smiths. They can be found in the southern part of the Karanas."); }
}
#END of FILE Zone:commons  ID:21052 -- Ranvigoz_Tonsmith 

