sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hello. $name. I'm the new commander of the Sky Shrine Militia.  This group of shrine residents and newly aligned outlanders are given various tasks to do for the benefit of the shrine.  Are you here to request a task?");
}
if($text=~/i am here to request a task/i){
quest::say("We have had recent news from one of our scouts in the Western Wastes that there have been storm giants wandering the coastal area.  We have not heard back from this scout in some time.  What we need is a volunteer to go deliver some tools so the scout can accurately communicate what is happening back to us.");
}
if($text=~/i will volunteer/i){
quest::say("Very good! Take this to the scout and wait for them to return the report.");
quest::summonitem("29683"); }
}
#END of FILE Zone:skyshrine  ID:114181 -- Commander_Leuz 

