sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Ahh. welcome! More souls to succumb to the inhabitants of the Outlands! My army of undead will grow stronger by the day. but it would be a pity if you perished before doing a [mortal bidding] for me.");
}
if($text=~/what mortal bidding/i){
quest::say("I see it as a win-win situation for me. If you succeed. I'll gain more power from the knowledge you bring back to me. If you fail. you become another addition to my undead minions. Thus. you cannot fail me in returning a scroll of Splurt. Defoliation. Covergence. or Thrall of Bones. In return. I will part with a scroll of mine."); }
}
#END of FILE Zone:overthere  ID:93102 -- Vaean_the_Night 

