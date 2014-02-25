sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings Stranger. is there something I can help you with? I would love to chat with you but im afraid I have to stay focused on the [case] I am investigating.");
}
if($text=~/what case?/i){
quest::say("Well $name. Im monitoring a possible smugglers ring down there ahead of us in the distance. That group down there sure has a large shipment of goods and I intend to find out why."); }
}
#END of FILE Zone:dawnshroud  ID:174085 -- Lieutenant_Broansas 

