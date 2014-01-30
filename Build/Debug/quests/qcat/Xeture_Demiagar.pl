sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("I have much to do here for the defense of our Temple and the appeasing of our patron Bertoxxulous. the Plague Lord. If the Plague Lord has gifted you with the desire to [serve his will] as a priest of the Bloodsabers I will assist in your training. If not. then leave me now and do not interrupt me again.");
}
if($text=~/i serve his will./i){
quest::say("I have much to do here for the defense of our Temple and the appeasing of our patron Bertoxxulous. the Plague Lord. If the Plague Lord has gifted you with the desire to [serve his will] as a priest of the Bloodsabers I will assist in your training. If not. then leave me now and do not interrupt me again.");
}
if($text=~/i will serve his will./i){
quest::say("I have much to do here for the defense of our Temple and the appeasing of our patron Bertoxxulous. the Plague Lord. If the Plague Lord has gifted you with the desire to [serve his will] as a priest of the Bloodsabers I will assist in your training. If not. then leave me now and do not interrupt me again."); }
}
#END of FILE Zone:qcat  ID:45090 -- Xeture_Demiagar 

