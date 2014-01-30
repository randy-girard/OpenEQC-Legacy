sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Oh.. Hiya, I'm just out here fishing, since I can't find a job. I hope this [bait] I just bought catches me a big ol' fish.");
}
if($text=~/what bait/i){
quest::say("I use Captain Rohand's Secret Recipe Super Magic Catch-A-Lot brand bait. I bought my pole from Sneed's up by the north pond."); }
}
sub EVENT_ITEM { 
if($itemcount{13702} == 1){
quest::say("Thank you so much!  If you want some free advice, steer clear of those [Irontoes]! They are nothing but trouble. Here, It's not much but I must thank you somehow.");
quest::summonitem("13129");
quest::givecash("12","0","0","0");
quest::faction("10102","-1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("10108","-1");
quest::faction("Not_Found","1"); }
}
#END of FILE Zone:qeynos  ID:1091 -- Faren 

