sub EVENT_SAY { 
if($text=~/i do understand common/i){
quest::say("Of course you do.  Now. listen carefully.  It may be too much for your feeble mind to gather all at once. and I hate to repeat myself.  Bring me one bat wing. one rat ear. one snake egg. and one fire beetle eye.  Take this bag. and make sure it's sealed before you return it to me.  Snake eggs spoil.  Now. quit staring at me with your jaw hanging open like a dead codfish.  I would have mistaken you for one. but dead codfish smell better. Haha!"); }
}
sub EVENT_ITEM { 
if($itemcount{14041} == 1){
quest::say("Why are you giving this to me?  Oh I see.  I forgot that rats don't know how to read. Haha!  Well. then. I shall read it for you. You do [understand common] don't you? Haha."); }
}
#END of FILE Zone:paineel  ID:75090 -- Auhrik_Siet`ka 

