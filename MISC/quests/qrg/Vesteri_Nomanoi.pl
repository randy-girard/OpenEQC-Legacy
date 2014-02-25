sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail. $name.  I am Vesteri Namanoi.  I provide training to the Jaggedpine Treefolk and their allies.  If you are not busy. I would like to ask a small [favor] of you.");
}
if($text=~/what favor/i){
quest::say("I need you to take this claim check to Qeynos for me.  Nesiff Talaherd is a woodcarver who owns a shop in South Qeynos.  I am having him carve a small statue of Tunare for Te'Anara.  With my training schedule. I can not make the journey to Qeynos.  Please give this claim check to Nesiff and bring the statue to me.  It is a surprise. so please do not say anything to Te'Anara about it."); }
}
#END of FILE Zone:qrg  ID:5279 -- Vesteri_Nomanoi 

