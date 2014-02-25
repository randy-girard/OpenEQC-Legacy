sub EVENT_SAY{
if($text=~/Hail/i){
quest::say("Do not waste my time, $name.  Do you wish to take the test of blades or not? Or do you have one of my old trinkets you wish to trade in?");
}
if($text=~/what trinkets/i){
quest::say("Ahh, I've given out some lesser trinkets in the past that many have gotten bored with.  I'm willing to accept Aerated Pauldrons in trade for Pauldrons of the Blue Sky.");
}
if($text=~/i wish to take the test of blades/i){
quest::say("The test of blades is not easy.  I hope you are as powerful as you are brave.  What do you wish to strive for? Strength, force, or skill?");
}
if($text=~/i strive for strength/i){
quest::say("Remember, true strength lies not only in the body, but in the mind as well. Return to me a bronze disc, a small pick, and a stone amulet.  If you manage to do this, my runed wind amulet shall be yours.");
}
if($text=~/i strive for force/i){
quest::say("Foolishness or bravery, $name?  We shall see.  Return to me a pearlescent globe, silver mesh and a spiroc air totem.  In return, you will receive both my deepest respect and the Pauldrons of the Blue Sky.");
}
if($text=~/i strive for skill/i){
quest::say("The test of skill it is. Go upward and retrieve these three items: an ivory tessera, a small ruby, and an azure ring.  Return these to me and the azure ruby ring shall be yours."); }
}
#END of FILE Zone:airplane  ID:Not_Found -- Falorn 

