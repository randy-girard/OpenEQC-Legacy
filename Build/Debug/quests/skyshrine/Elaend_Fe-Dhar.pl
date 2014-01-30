sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings to you.  I seek one who calls himself a wizard.  What do you call yourself. manling?");
}
if($text=~/i am a wizard/i){
quest::say("Excellent.  Are you sure enough of your skills to undertake my tasks?  If not. get out of my sight!");
}
if($text=~/i will undertake your tasks/i){
quest::say("I thought so.  One should never back down from a challenge.  Once you have completed them I will have a cap. a robe. sleeves. wristbands. gloves. leggings and boots.");
}
if($text=~/what cap/i){
quest::say("For you to receive my gift. I shall require a tattered silk turban and three crushed flame opals.");
}
if($text=~/what sleeves/i){
quest::say("For these durable sleeves. you must fetch me a pair of tattered silk sleeves and a set of three flawed topaz.");
}
if($text=~/what wristbands/i){
quest::say("The crafting of this wristguard requires that you bring me a tattered silk wristband and three crushed onyx sapphires.");
}
if($text=~/what gloves/i){
quest::say("For this fine pair of gloves you must seek out and return to me three crushed topaz as well as a pair of tattered silk gloves");
}
if($text=~/what leggings/i){
quest::say("This pair of leggings will be yours provided you supply me with three nephrite and a pair of tattered silk pantaloons.");
}
if($text=~/what boots/i){
quest::say("These supple boots shall be yours upon receipt of three crushed jaundice gems and a pair of tattered silk boots.");
}
if($text=~/what robe/i){
quest::say("This exquisite robe shall be yours in exchange for a tattered silk robe and three pristine emeralds"); }
}
#END of FILE Zone:skyshrine  ID:114259 -- Elaend_Fe`Dhar 

