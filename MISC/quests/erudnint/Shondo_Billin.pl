sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Oh. Brell!!  Help me get out of here.  I did nothing wrong!!  I did not know you could not take that [tonic] out of the city.");
}
if($text=~/what tonic/i){
quest::say("Oh. why did I have to try and help that Erudite in Qeynos?  He was sick and vomiting and needed something called Erud's Tonic!!  Now just because I wanted to help. I am going to be vomiting up my insides!!  Oh. Brell!!!  GET ME OUT OF HERE!!"); }
}
#END of FILE Zone:erudnint  ID:24019 -- Shondo_Billin 

