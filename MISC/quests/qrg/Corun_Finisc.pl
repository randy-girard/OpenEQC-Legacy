sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hello.  My name is Corun Finisc and I am one of the Jaggedpine Treefolk.  It is our divine responsibility to watch over and protect Surefall Glade and its [inhabitants] from those who seek to [destroy] them.");
}
if($text=~/what inhabitants/i){
quest::say("The bears of Surefall Glade are our brothers.  We are all children of [Tunare].  We would gladly die in their defense.");
}
if($text=~/what tunare/i){
quest::say("Tunare is the Mother of All.  It is though Her will that we protect this land and its many creatures.");
}
if($text=~/who seek to destroy the inhabitants/i){
quest::say("The bears of Surefall Glade are our brothers.  We are all children of [Tunare].  We would gladly die in their defense.");
}
if($text=~/who seeks to destroy our inhabitants/i){
quest::say("The bears of Surefall Glade are our brothers.  We are all children of [Tunare].  We would gladly die in their defense."); }
}
#END of FILE Zone:qrg  ID:739 -- Corun_Finisc 

