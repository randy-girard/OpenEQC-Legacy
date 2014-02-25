sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hello $name. I'm waiting to hear from my husband. He's been working on assignment for the Patriarch."); }
}
sub EVENT_ITEM { 
if($itemcount{4756} == 1){
quest::say("Oh my sweet Daosorak. such a hard worker he is. It brings a smile upon my face to know that his mining operation is going well and that he will be home soon. I thank you for bringing me this letter from him.");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1"); }
}
#END of FILE Zone:shadowhaven  ID:150091 -- Aliane_Steelknuckle 

