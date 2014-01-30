sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hello there $name! I am Lady Mistala Glimmerblade of the House of Fordel.  I preside over this great city of Shadowhaven along with my husband Daloran. I take great pride in knowing that our city has come so far and became a place of free trade and freedom for all of it's inhabitants. We also are lucky to have some of the finest guardspersons in the land. Which reminds me. I need to collect my [report].");
}
if($text=~/what report?/i){
quest::say("I have a report that I collect every few days from my first Lieutenant Broansas. This report contains information about each guard. his performance. and usually notes on suggestions upon how to limit the number of smugglers passing through our town. However. Lieutenant Broansas is currently on assignment investigating a smugglers ring. I need someone to retrieve his reports of the latest information that he gathered for me. Will you [retrieve the daily reports]?");
}
if($text=~/I will retrieve the daily reports/i){
quest::say("Many thanks. $name. The last I heard from Broansas he was heading for the Dawnshroud peaks please seek him out there and present him with this notarized letter so that he will know that I have sent you. Return to me with his report as soon as you can. I await your return.");
quest::summonitem("4760");
}
if($text=~/i will retrieve the daila reports/i){
quest::say("Many thanks. $name. The last I heard from Broansas he was heading for the Dawnshroud peaks please seek him out there and present him with this notarized letter so that he will know that I have sent you. Return to me with his report as soon as you can. I await your return.");
quest::summonitem("4760"); }
}
sub EVENT_ITEM { 
if($itemcount{4761} == 1){
quest::say("Its nice to see that Broansas is doing well. I could not have been able to retrieve this information without your assistance $name. I thank you for your help and will be sure to tell the council members of your good deeds. I often need reports retrieved so please check back if you would like to help to the House of Fordel.");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1"); }
}
#END of FILE Zone:shadowhaven  ID:150090 -- Mistala_Glimmerblade 

