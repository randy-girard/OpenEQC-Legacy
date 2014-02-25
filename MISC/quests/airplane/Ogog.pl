sub EVENT_SAY{
if($text=~/Hail/i){
quest::say("Ogog not smart, but Ogog smarter than you.  You ready for Ogog or no?");
}
if($text=~/i am ready/i){
quest::say("Ok, $name.  Ogog got some hard things for you.  You do bash, smash, or think test?");
}
if($text=~/i do think test/i){
quest::say("Ogog think you can do this one maybe, Ogog no know, though.  You bring Ogog efreeti belt, pegasus statue, a spiroc wind totem, and a wind tablet.  Ogog say good luck!");
}
if($text=~/i do smash test/i){
quest::say("Ogog smash good. . . Ogog no think you can smash good.  But Ogog let you try.  You get Ogog Djinni War Blade, some virulent wasp poison, and a mottled spiroc feather.  Ogog say you good warrior if you do this!");
}
if($text=~/i do bash test/i){
quest::say("This one hard, Ogog like it.  Ogog need efreeti battle axe, some honey nectar, bottled djinni, and ethereal emerald. Then Ogog make you best basher."); }
}
#END of FILE Zone:airplane  ID:Not_Found -- Ogog 

