sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Well met. $name.  My name is Lashun Novashine and I am a humble priest of Rodcet Nife. the Prime Healer.  I wish to spread His word to every corner of Norrath.  My job gets more difficult each day with so many so willing to take lives rather than preserve them."); }
}
sub EVENT_ITEM { 
if($itemcount{13073} == 2){
quest::say("Ah good. I see you seek healing.  But you must offer the remains of one more minion of Bertoxxulous before Rodcet will deem you worthy.");
quest::say("Very well. young one.  May the light of the Prime Healer wash away your scars.");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","-1");
quest::faction("Not_Found","1");
}
if($itemcount{13073} == 4){
quest::say("Ah good. I see you seek healing.  But you must offer the remains of one more minion of Bertoxxulous before Rodcet will deem you worthy.");
quest::say("Very well. young one.  May the light of the Prime Healer wash away your scars.");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","-1");
quest::faction("Not_Found","1"); }
}
#END of FILE Zone:qeynos2  ID:2026 -- Lashun_Novashine 

