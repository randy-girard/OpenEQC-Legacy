sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail!  What do think of [Lisera]?  She aint' much to look at, but soon she will be singing again.");
}
if($text=~/who is lisera/i){
quest::say("Lisera is my lute.  She sounds horrible.  I need to get her tuned by a master tuner, but the League's Master Tuner is in the Plains of Karana for a while.  If only..  hey!!  You look like a fellow bard...  You [interested in the job]?");
}
if($text=~/i am interested in the job/i){
quest::say("Great!!  Here.  Take Lisera to Vhalen Nostrolo.  He is in the plains near the well, composing.  He must tune it for me.  Be very careful! Lisera is all I've got.  If you complete this task and return with good news. I shall be glad to pass along an extra songsheet for a tune entitled 'Hymn of Restoration.'");
quest::summonitem("13114"); }
}
#END of FILE Zone:qeynos  ID:1057 -- Cassius_Messus 

