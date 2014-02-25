sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail $name. And good day to you. What brings you to my quarters today?  Do you wish to learn more about the [magic] that we study in our hallowed section of the Shadowhaven?");
}
if($text=~/what magic?/i){
quest::say("It's always a pleasure to meet someone that shows interest in the magic that we practice here. Our magic studies consist mostly of teleportation and the arts of elemental mastery. I'm actually conducting a study now. but I'm missing a few [books].");
}
if($text=~/what books?/i){
quest::say("Well. I have an old student that is now serving as an advisor to one of the most respected residents of Katta Castelleum. He has some specific books that I need to further my research. but I cannot take the time to travel so far away from my home to retrieve them. I seek out one who will [bring my research] to me from Dersino.");
}
if($text=~/I will bring your research/i){
quest::say("You are exactly the one I am looking for. After presenting this seal to Dersino. inform him that you wish to take the research and I am sure that he will know I have sent you. I look forward to seeing you soon.");
quest::summonitem("4769"); }
}
#END of FILE Zone:shadowhaven  ID:150087 -- Beriol_Talorakoir 

