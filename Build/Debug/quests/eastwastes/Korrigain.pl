sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Who dares disturb my rest? If ye be a friend of the mighty Coldain. then show me proof and I shall tell you of my plight.  If not. then be on your way."); }
}
sub EVENT_ITEM { 
if($itemcount{30268} == 1){
quest::say("Many seasons ago I stood here in life with my comrades. the best warriors Thurgadin had to offer. Along with our faithful wolven army we were poised to eliminate the Kromrif presence in the region. Somehow. the enemy was made aware of our plans and just before our attack. a group of Ry'Gorr oracles charmed our wolves. forcing them to tear down their own masters. We were caught by surprise and died a savage death.");
quest::summonitem("30268"); }
}
#END of FILE Zone:eastwastes  ID:6769 -- Korrigain 

