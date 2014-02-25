sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail! You appear to be a [new priest]. <smiles> Ah. I so enjoy the presence of youth within Deepwater Temple. I am sure Prexus is smiling upon us as we speak.");
}
if($text=~/i am a new priest/i){
quest::say("As I suspected. I shall assist you with your training and you shall assist the temple with your service. A young priest can help out by asking to [convert fishermen in Qeynos] or maybe even something truly great such as requesting to [protect the depths].");
}
if($text=~/i want to protect the depths/i){
quest::say("We have heard of zombies inhabiting the depths of Erud's Crossing. Go and seek them out. Destroy them. This evil should not exist within the realm of the Ocean Lord. Take this bag. Fill it with their rotting flesh. combine it and return it to me. May Prexus guide you."); }
}
#END of FILE Zone:erudnext  ID:98048 -- Dleria_Mausrel 

