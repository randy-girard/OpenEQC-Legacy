sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings. friend.  I have many fine herbs for sale.  My prices are reasonable for I am not governed by the [Haggle Baron].  If you fancy yourself an adventurer. I would like to hire you for a [simple mission].");
}
if($text=~/what simple mission?/i){
quest::say("I actually have a few items I am presently low on.  I would appreciate some assistance to [collect fern flowers] or maybe you are an alchemist who can [gather bone chips].");
}
if($text=~/I will collect fern flowers/i){
quest::say("I have run low on fern flowers and must have more of them.  Take this [flower pouch].  Outside the city can be found carnivorous plants and a strain of them buds the flower in question.  Collect enough of these flowers to fill and combine the pouch and I shall reward you.");
}
if($text=~/I will gather bone chips/i){
quest::say("I should tell you. I do not need the bone chips.  I need bone granite powder.  In order to get it. you must find some granite pebbles and then three piles of bone chips from decaying skeletons.  After you gather the items you will have to use your skill in alchemy to combine the items and create bone granite powder.  The powder is what I need."); }
}
#END of FILE Zone:cabwest  ID:2846 -- Jondin 

