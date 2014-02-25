sub EVENT_SAY { 
if($text=~/what sisters dark/i){
quest::say("We three are the Sisters Dark - Keepers of the shadowed Dread - [Lore of Death]. we research now - Join with us and serve [the Dead].");
}
if($text=~/what lore of death/i){
quest::say("The Lore of Death is shadow bound - Its [words] are [hid]. yet shall be found - Through our research into the dark - Old hexes found and parchment marked.");
}
if($text=~/what the dead/i){
quest::say("Servants of Innoruuk. we are the Dead - Where darkness beckons shall we be led.");
}
if($text=~/what necromancy/i){
quest::say("Necromancy - Art of the Dead - Binding bones to serve your will - We research now the [Lore of Death] - Ancient spells with power still."); }
}
#END of FILE Zone:neriaka  ID:40001 -- X`Ta_Timpi 

