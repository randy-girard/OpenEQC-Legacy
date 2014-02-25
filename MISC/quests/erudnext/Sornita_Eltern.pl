sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings. $name!  Please be do not speak too loudly while inside the library.  If you need anything special. feel free to ask me. I am a member of the Crimson Hands and my specialty is divination.  In my research I have stumbled across many [rare tomes].");
}
if($text=~/what rare tomes/i){
quest::say("Why. just yesterday I stumbled upon what I believe to be an excerpt from Miragul's own treatise on the origin of the creatures known as scarecrows.  Such a work is heresy and would be destroyed if the High Council knew of its existence so I have been tight-lipped about my discovery.  If you would like to see it. I will show it to you. for a nominal donation of 20 gold pieces."); }
}
#END of FILE Zone:erudnext  ID:98016 -- Sornita_Eltern 

