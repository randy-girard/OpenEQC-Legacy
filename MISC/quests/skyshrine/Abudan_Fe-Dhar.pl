sub EVENT_SAY { 
if($text=~/yes/i){
quest::say("Excellent.  Are you sure enough of your skills to undertake my tasks?  If not. get out of my sight. weakling!");
}
if($text=~/i will undertake your tasks/i){
quest::say("I thought so.  One should never back down from a challenge.  Once you have completed them I will have a cap. a robe. sleeves. wristbands. gloves. leggings and boots to reward you.");
}
if($text=~/what cap/i){
quest::say("For you to receive my gift. I shall require three crushed flame opals and a tattered silk turban.");
}
if($text=~/what robe/i){
quest::say("This exquisite robe shall be yours in exchange for a tattered silk robe and three pristine emeralds.");
}
if($text=~/what wristbands/i){
quest::say("The crafting of this wristband requires that you bring me a tattered silk wristband and three crushed onyx sapphires.");
}
if($text=~/what gloves/i){
quest::say("For this fine pair of gloves you must seek out and return to me a pair of tattered silk gloves and three crushed topaz.");
}
if($text=~/what leggings/i){
quest::say("This pair of leggings will be yours provided you supply me with a pair of tattered silk pantaloons and three nephrite.");
}
if($text=~/what boots/i){
quest::say("These supple boots shall be yours upon receipt of a pair of tattered silk boots and three crushed jaundice gems."); }
}
#END of FILE Zone:skyshrine  ID:114266 -- Abudan_Fe`Dhar 

