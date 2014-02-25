sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("I'm sorry $name. I have neither the time nor the patience to chat right now.");
}
if($text=~/what pool/i){
quest::say("Oh Tatlan and Wicas sent you did they?  I'll tell you what I told them. nothing is free.  If you want to know about the pools then I need something [from you] first.");
}
if($text=~/what do you need from me?/i){
quest::say("I'm sure it'll be easy for an adventurer as you.  I am working on a potion. and I cannot currently travel to gather my last component.  If you could bring me the blood of a Sarnak I'd be willing to share what I know."); }
}
#END of FILE Zone:poknowledge  ID:202060 -- Tarerd_Gahar 

