sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hello. $name!  It's hard to believe just how cold it gets here!  It really has been wearing me down. Especially after the [journey] from Qeynos.");
}
if($text=~/what journey/i){
quest::say("I have been traveling the face of Norrath to unravel the mystery of why my beloved [brother] attacked a group of traveling bards.  He didn't survive the fight.  It's been so long. I can't really remember what he looked like!  I miss him so much...  Now all I have are his [diary] and some brewing recipes he sold before his death.");
}
if($text=~/what diary/i){
quest::say("The diary?  It's one of the two connections I still have to my brother.  Sadly. [pages] are missing from it.  I've been looking for them.");
}
if($text=~/what pages/i){
quest::say("I believe the pages contain the events that drove my brother to insanity.  I have been searching for the remaining three missing pages.  There is some hope; I found a couple of pages over in Everfrost Mountains."); }
}

sub EVENT_ITEM
{ 
 if($itemcount{18136} == 1 && $itemcount{18137} == 1 && $itemcount{18138} == 1)
  {
   quest::say("Oh my! Thank ye! These really mean a lot to me. Here is what I promised you");
   quest::summonitem(18139);
   quest::exp(200);
 }
}

#END of FILE Zone:halas  ID:29015 -- Thadres_Thyme 

