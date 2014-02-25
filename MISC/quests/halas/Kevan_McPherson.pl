sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Well met. $name! I'm Kevan McPherson. the best darn smith in the north. Have ye come to purchase my finely crafted weapons or are ye wanting me ta teach ya the secrets of Northman smithing?");
}
if($text=~/what northman kite shields/i){
quest::say("To smith a Northman kite shield ye'll need a kite shield mold. a smithy hammer. a flask of water and a medium quality folded sheet metal. Remember ye'll have ta smith the metal sheet in a regular forge and finish the shield in our special Northman forge."); }
}
#END of FILE Zone:halas  ID:29047 -- Kevan_McPherson 

