sub EVENT_SAY { 
if($text=~/what ingredients?/i){
quest::say("Oh. let me see..  I'll need a sheet of fancy Blessed parchment. a small flask of Dark Root ink. and of course a large quill. I think a Stormraven's quill would be best. certainly better than this one I've been using so far.  Bring those items to me and I'll be happy to make you a copy for yourself.  I'm not sure where you'll find all of those. I seem to have bought up the last of the stock in several places.  Someone's bound to have them for sale. good luck with it!"); }
}
sub EVENT_ITEM { 
if($itemcount{9721} == 1){
quest::say("Here you are friend. an earring of the Solstice.  I'll see that your old earring goes to a druid who can make better use of it.  Safe travels. friend!");
quest::summonitem("28771"); }
}
#END of FILE Zone:fungusgrove  ID:157025 -- Rebecca_Cabbageleaf 

