sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Ehem!  What? Oh, hello there! Sirran be my name.  Yes? So, come to the Plane of Sky, have you?  Killed all my fairies!  Hah!  So!  Do you wish to know how to traverse this plane? Or should I just go away?  I know much about this plane.  You would do well to listen!");
quest::say("Ah!  Come far you have!  You are all crazy!  I like it! Swords spin no more! Spin, spin.  Unlucky they were! I thought them [vain]!"); }
}
sub EVENT_ITEM { 
if($itemcount{20921} == 1){
quest::say("These are the keys!  Use them well!  Hold them in your hand and touch them to the runed platforms!  Guide you thy will!  Hah!  The last to go, must tell me so, or be in for a [hassle]!  If there's a hassle, I will go!");
quest::summonitem("20912");
}
if($itemcount{20922} == 1){
quest::say("You move fast, you crazy kids!  Keep going! Prod you I will!  Stuck here I have been!  Oh!  Let me know when you are [done] or this will be no fun!  Haha!");
quest::summonitem("20913");
}
if($itemcount{20920} == 1){
quest::say("These are the keys!  Use them well!  Hold them in your hand and touch them to the runed platforms!  Guide you they will!  Hah!  The last to go, must tell me so, or be in for a [hassle].  If there is a hassle I will go!!");
quest::summonitem("20911"); }
}
#END of FILE Zone:airplane  ID:4571 -- Sirran_the_Lunatic 

