sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Yes. young one?");
quest::say("I don't know who you are! Stofo informs me of all those who are traveling this path. If you wish to travel this path. you MUST first do his bidding. Only then will I consider helping you.");
quest::say("Yes. young one?"); }
}
sub EVENT_ITEM { 
if($itemcount{10604} == 1){
quest::say("Jeb has spoken with you already. excellent!  Here is a bag that you will need. Tell me. are you ready for the test of the phantasm?");
quest::summonitem("10604"); }
}
#END of FILE Zone:hole  ID:39065 -- Polzin_Mrid 

