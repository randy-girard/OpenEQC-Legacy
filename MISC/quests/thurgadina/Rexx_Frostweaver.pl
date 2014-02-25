sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hmmm. ye be one o' them offlanders. don't ye? I've heard some strange tales o' yer kind so don't be tryin' any funny business with me. I know the value of a platinum piece and I'll not get cheated by yer foreign coin."); }
}
sub EVENT_ITEM { 
if($itemcount{1179} == 1){
quest::summonitem("1179"); }
}
#END of FILE Zone:thurgadina  ID:115167 -- Rexx_Frostweaver 

