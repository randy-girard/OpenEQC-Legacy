sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings to you.  I seek the service of a powerful warrior. If you are not what I seek leave me be.");
}
if($text=~/i am a warrior/i){
quest::say("Excellent. I admire strength and ferocity.  Life is but a series of battles. is it not?");
}
if($text=~/i am a powerful warrior/i){
quest::say("Excellent. I admire strength and ferocity.  Life is but a series of battles. is it not?");
}
if($text=~/what breastplate/i){
quest::say("As the resolve of your discipline and strength shall endure through a battle. so shall this breastplate.   All I required are an unadorned breastplate. and three flawless diamonds.  Do this quickly so that you may return to the field of battle.");
}
if($text=~/what gauntlets/i){
quest::say("Mighty gauntlets to aid in obliterating your foes. eh?  It is no easy task but I shall require a pair of unadorned plate gauntlets and three crushed topaz.");
}
if($text=~/what armplates/i){
quest::say("So. a pair of armplates is what you require?  Well. I require unadorned plate vambraces. as well as three flawed emeralds before you may receive them.  May your deeds be spread throughout the lands!");
}
if($text=~/what vambracers/i){
quest::say("Bracers for the mighty?  Retrieve these components and I shall forge the item for you.  Bring me an unadorned plate and three crushed flame emeralds.");
}
if($text=~/what bracers/i){
quest::say("Bracers for the mighty?  Retrieve these components and I shall forge the item for you.  Bring me an unadorned plate and three crushed flame emeralds.");
}
if($text=~/what greaves/i){
quest::say("Strength and balance are important. are they not?  I shall help give you an advantage with these leggings.  Gather for me three flawed sea sapphires and a set of unadorned plate greaves.");
}
if($text=~/what helm/i){
quest::say("All I require are an unadorned plate helmet and three pieces of crushed coral.  This should be a small task for one such as you.  Go now and I shall await your return.");
}
if($text=~/what boots/i){
quest::say("A pair of boots you shall have once you have gotten a pair of unadorned plate boots as well as three pieces of crushed black marble.");
}
if($text=~/what series of battle/i){
quest::say("We share the same view then.  I wish to test your skills in battle.  Not with me of course. for I will destroy you where you stand.  Instead I wish for you to retrieve some trinkets for me and once I have them I will reward you handsomely with a helm. a breastplate. armplates. bracers. gauntlets. greaves. or boots.");
}
if($text=~/yes, life is a series of battles;/i){
quest::say("We share the same view then.  I wish to test your skills in battle.  Not with me of course. for I will destroy you where you stand.  Instead I wish for you to retrieve some trinkets for me and once I have them I will reward you handsomely with a helm. a breastplate. armplates. bracers. gauntlets. greaves. or boots."); }
}
sub EVENT_ITEM { 
if($itemcount{24962} == 1 && $itemcount{25832} == 3){
quest::summonitem("31186");
quest::faction("332","1");
quest::faction("Not_Found","1");
quest::faction("336","-1"); }
}
#END of FILE Zone:skyshrine  ID:114260 -- Jendavudd_Fe`Dhar 

