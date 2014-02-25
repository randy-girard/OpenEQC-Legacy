sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Welcome t' me humble shop. then! I offer fine items fashioned from the skins o' the beasts o' Everfrrost. I do.  Leather is me specialty and I can always use the [extra hides]. ye know.");
}
if($text=~/what extra hides/i){
quest::say("I'll offer any hunter some used tattered armor fer every polar bear skin I'm brought. I'm sure even ye can wrestle the skins from the backs o' the polar bear cubs. no?"); }
}
sub EVENT_ITEM { 
if($itemcount{13761} == 1){
quest::say("This is much apprreciated!  Please accept this used armor in return and a gold piece as well. fer yer troubles.  Ye've done well!  I may have a [second job] fer ye. if ye like?");
quest::summonitem("2134");
quest::givecash("0","0","1","0");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
}
if($itemcount{12223} == 2){
quest::say("No reward until I've got TWO wrath orc wristbands!");
quest::say("Fine work. hunter!!  As yer reward. please accept this item which I've fashion'd fer ye.");
quest::summonitem("2171");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1"); }
}
#END of FILE Zone:halas  ID:29052 -- Cindl 

