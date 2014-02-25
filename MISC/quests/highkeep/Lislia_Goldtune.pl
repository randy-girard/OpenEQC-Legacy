sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail. $name - Are you [interested] in helping the League of Antonican Bards by delivering some [mail]?");
}
if($text=~/I am interested in delivering mail/i){
quest::say("I have messages that need to go to Freeport and to Qeynos.  Will you [deliver] mail to [Freeport] or [Qeynos] for me?"); }
}
#END of FILE Zone:highkeep  ID:6036 -- Lislia_Goldtune 

