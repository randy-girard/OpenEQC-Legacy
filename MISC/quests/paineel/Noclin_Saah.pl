sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail to yourself, fool!  Leave me be,  I have [matters of importance] to ponder.");
}
if($text=~/what matter of importance?/i){
quest::say("If you are so greatly interested in my affairs, then so be it.  I have lost my skeleton servant.  He now wanders the yard, taking his pain out on the new apprentices of our guild.  I cannot return to my guild without ridding the yard of that menace, for my mistake will cost me dearly if it is brought to the attention of my masters.  Hrm.  Perhaps you could destroy my pet for me and bring me proof of his removal.  If you do, I may even grace you with a [reward].");
}
if($text=~/what reward?/i){
quest::say("Speak not of reward when you have not even finished this simple task!  Now, leave me be!!");
}
if($text=~/what matters of importance/i){
quest::say("If you are so greatly interested in my affairs, then so be it.  I have lost my skeleton servant.  He now wanders the yard taking his pain out on the new apprentices of our guild.  I cannot return to my guild without ridding the yard of that menace, for my mistake will cost me dearly if it is brought to the attention of my masters.  Hrm.  Perhaps you could destroy my pet for me and bring me proof of his removal.  If you do, I may even grace you with a [reward]."); }
}
sub EVENT_ITEM { 
if($itemcount{7107} == 1){
quest::say("Ah!  You found him and obviously removed his presence from the yard.  You have my thanks, small as it is for such a menial task.  Here.  Keep this worthless bit of bone for your labors.");
quest::summonitem("7106");
quest::faction("302","1");
quest::faction("Not_Found","-1");
quest::faction("Not_Found","-1");
quest::faction("Not_Found","-1");
quest::faction("Not_Found","-1"); }
}
#END of FILE Zone:paineel  ID:75006 -- Noclin_Saah 

