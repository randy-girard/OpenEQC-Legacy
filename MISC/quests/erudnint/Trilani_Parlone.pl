sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail. good adventurer!  Do you bring word from my [husband]?");
}
if($text=~/who are your husband/i){
quest::say("Tolkar is his name.  My beloved husband.  He still lives in Felwithe while I study here.  It must be hard on him."); }
}
#END of FILE Zone:erudnint  ID:24018 -- Trilani_Parlone 

