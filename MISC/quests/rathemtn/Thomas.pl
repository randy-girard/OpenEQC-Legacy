sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Welcome to our camp.  We are paladins gathered from many lands. We have been called to this land by our deities.  Ours is a crusade of righteousness.  Have you happened upon us by chance or do you [seek the sacred molds]?");
}
if($text=~/what sacred molds/i){
quest::say("Many of us carry the sacred molds of the holy paladin armor.  We will release it only to those who have proven themselves to each of our deities.  If you seek it. speak up!! Tell us which part you seek.  I carry the secret of the [Helm of Ro].  The others carry those of vambraces. breastplates. bracers. gauntlets. greaves and boots of Ro.");
}
if($text=~/what helm of ro/i){
quest::say("To receive the mold of the Helm of Ro you must first demonstrate your strength.  Go to the plains of thunder.  There you shall hunt down the most vile creatures I have ever encountered.  Seek the undead cyclopes.  I have spied them in the most dangerous portions of my realm. Fetch me two of their skulls.");
}
if($text=~/i seek the sacred molds/i){
quest::say("Many of us carry the sacred molds of the holy paladin armor.  We will release it only to those who have proven themselves to each of our deities.  If you seek it. speak up!! Tell us which part you seek.  I carry the secret of the [Helm of Ro].  The others carry those of vambraces. breastplates. bracers. gauntlets. greaves and boots of Ro."); }
}
sub EVENT_ITEM { 
if($itemcount{12308} == 1){
quest::say("You have proven yourself to Karana.  I grant you the mold of the Ro Helm.  May the winds of Karana blow in your favor.  Now you must seek out [Lord Searfire] and  ask him for [ronium] to complete the second and only other component needed to be fashioned by a master blacksmith.");
quest::summonitem("12298");
quest::faction("Not_Found","1");
quest::faction("Not_Found","-1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
}
if($itemcount{12308} == 2){
quest::say("I called for two cyclops skulls.");
quest::say("You have proven yourself to Karana.  I grant you the mold of the Ro Helm.  May the winds of Karana blow in your favor.  Now you must seek out [Lord Searfire] and  ask him for [ronium] to complete the second and only other component needed to be fashioned by a master blacksmith.");
quest::faction("Not_Found","1");
quest::faction("Not_Found","-1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1"); }
}
#END of FILE Zone:rathemtn  ID:50112 -- Thomas 

