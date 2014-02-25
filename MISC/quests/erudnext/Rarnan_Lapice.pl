sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("It is good to meet you. $name.  To enter the Temple of Divine Light is to invite Quellious into your body and soul.  Tranquility is our way and. as such. we do all we can to uphold it.  Are you a [cleric of Quellious]. or am I mistaken?");
}
if($text=~/i am a cleric of the quellious/i){
quest::say("You have not done much to upset the Peacekeepers of this temple. but we must ask you to prove yourself to us before we may discuss things such as this."); }
}
#END of FILE Zone:erudnext  ID:98046 -- Rarnan_Lapice 

