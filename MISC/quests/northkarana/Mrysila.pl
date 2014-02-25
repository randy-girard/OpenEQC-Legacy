sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("I am Mrysila. custodian of the [Concordance of Research]."); }
}
sub EVENT_ITEM { 
if($itemcount{10300} == 3){
quest::say("A lightstone ? Thank you very much.  Here is a copy of 'Runes and Research' for you.");
quest::summonitem("18176");
}
if($itemcount{10400} == 1){
quest::say("A greater lightstone?  Thank you very much.  Here is a 'Concordance of Research' for you.");
quest::summonitem("17504");
}
if($itemcount{10300} == 1){
quest::say("A lightstone ? Thank you very much.  Here is a copy of 'Runes and Research' for you.");
quest::summonitem("18176"); }
}
#END of FILE Zone:northkarana  ID:13067 -- Mrysila 

