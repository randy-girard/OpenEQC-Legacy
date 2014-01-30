sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("It is good to meet you. $name.  You. my friend. are an adventurer.  The rugged look of you testifies to that. Let me know if you plan to adventure in the Plains of Karana.  I have need of a person such as yourself to [deliver a flask].");
}
if($text=~/what deliver a flask/i){
quest::say("It is nothing more than a special elixir for plants only.");
}
if($text=~/i want to deliver a flask/i){
quest::say("That is splendid!  I thought I would have to take the long journey to the western Plains of Karana myself.  Here you are. my friend.  Take this flask of nitrates to a woman named Linaya Sowlin.  It will help her crops grow stronger.  You will find her farm alongside the road to Highpass Hold.  She should pay you well for the delivery.  Farewell.");
quest::summonitem("13945","1"); }
}
#END of FILE Zone:qrg  ID:1666 -- Gerael_Woodone 

