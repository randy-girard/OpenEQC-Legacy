sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings and blessings to you, $name. Karana offers you his protection and guidance. All who accept the offer shall find safe haven within our Temple of Thunder, If you are a cleric of Karana, you must have a [desire to serve Karana]'s flock.");
}
if($text=~/i desire to serve the karana/i){
quest::say("If you are a young acolyte, you may [deliver blessings to the flock] and if you are a skilled cleric, we need you to [hunt bandit binders].");
}
if($text=~/i want to deliver blessings to the flock/i){
quest::say("Then go to the Plains of Karana. It is there that the blessings are needed. Ask every resident of the plains if they are followers of Karana. If they are, then ask them if they [require Karana's blessings]. Let them drink from this temple chalice. Return the empty chalice to me and you shall never go thirsty again.");
quest::summonitem("12103"); }
}
#END of FILE Zone:qeynos  ID:1085 -- Gehna_Solbenya 

