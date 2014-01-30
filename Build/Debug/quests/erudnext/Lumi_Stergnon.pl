sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Peace and tranquility be with you. $name.  Are you a [new acolyte of peace] or are you [here to pay homage] to the child of tranquility?");
}
if($text=~/i am here to pay homage/i){
quest::say("Then respect our temple and keep your prayers silent."); }
}
#END of FILE Zone:erudnext  ID:98045 -- Lumi_Stergnon 

