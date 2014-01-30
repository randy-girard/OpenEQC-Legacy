sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Tomekeeper Danl says 'Good day, citizen. Please remember to keep your voice down in our library. Feel free to browse the extensive collection of books we have on display. Learning is all about you and our library is the greatest collection of educational literature in the world, as you can no doubt see. However, there are a few books we do not own and we are prepared to pay well to acquire [rare finds].");
}
if($text=~/what rare finds/i){
quest::say("Yes. any rare books. tomes. essays. or other literature you find may be of interested to me. Although the finds I am interested in are quite high profile and would most likely only be found in the possession of very powerful or influential beings. Give me what you have found and I will pay you what it is worth to us.");
}
if($text=~/Who is Lheao/i){
quest::say("Lheao was my predecessor here at the Library of Erudin. He has since retired, just a few years ago. I'm sure he would be most impressed with your find and offer insightful conversation on the subject. Although I'm not sure one of your profession would be interested in such a scholarly endeavor, no offense. If you are interested, find him and tell him you found the book 'Immortals.' I'm not sure where he has retired to, but I hear it is near an ocean somewhere."); }
}
sub EVENT_ITEM { 
if ($itemcount{18195} == 1){
quest::summonitem("1682"); #Danl's Reference
quest::emote("gasps at the sight of the rare book");
quest::say("This is a great find indeed! I can only imagine who you had to.. persuade to give you the book. Our library would be very interested in acquiring this and I am prepared to give you this platinum and a referral that marks you as a friend of the library. If only [Lheao] could see this.");
quest::givecash("6","0","0","0");
quest::exp("200"); }
}
#END of FILE Zone:erudnext  ID:98032 -- Tomekeeper_Danl 

