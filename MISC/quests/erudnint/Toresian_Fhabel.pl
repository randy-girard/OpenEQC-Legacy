sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Welcome. my friend! We are the Craftkeepers. We study the circle of magic called enchantment. What circle do you [study]?");
}
if($text=~/i study enchantment/i){
quest::say("Then I welcome you into our circle. It is good to see new blood. I have a favor to ask of you. Do you [wish to assist Toresian] or do you not have the time?");
}
if($text=~/i wish to assist Toresian/i){
quest::say("You are most welcome to the circle of the Craftkeepers. but I require more service before we can discuss such things."); }
}
#END of FILE Zone:erudnint  ID:24071 -- Toresian_Fhabel 

