sub EVENT_SAY{
if($text=~/Hail/i){
quest::say("Welcome, $name.  I am apprentice Rayne.  Do you wish to test your abilities? Or perhaps you would like to find out what I have to trade?");
}
if($text=~/what trade/i){
quest::say("Bartering is another important skill.  Sometimes finding something that most consider junk can be useful to another for a whole different reason.  Find me a Transparent Mask, Bracer of Protection or Ebonsting and I will search out a much better upgrade for you.");
}
if($text=~/what do you have for trade/i){
quest::say("Bartering is another important skill.  Sometimes finding something that most consider junk can be useful to another for a whole different reason.  Find me a Transparent Mask, Bracer of Protection or Ebonsting and I will search out a much better upgrade for you.");
}
if($text=~/what do you have to trade/i){
quest::say("Bartering is another important skill.  Sometimes finding something that most consider junk can be useful to another for a whole different reason.  Find me a Transparent Mask, Bracer of Protection or Ebonsting and I will search out a much better upgrade for you.");
}
if($text=~/what abilities/i){
quest::say("Great, let us waste no more time!  Do you wish to begin your test of deception, stealth, or cunning?");
}
if($text=~/what test of deception/i){
quest::say("Deception it is.  Proceed upward through the sky and return to me the honied nectar, a bixie stinger from this plane, a lightning rod, and a bloodsky sapphire for the test of deception and earn Thornstinger, dirk of rampage.");
}
if($text=~/what test of stealth/i){
quest::say("Stealth is a must.  Travel among the residents of the sky and bring to me a pegasus statuette, a prismatic sphere, and a fine wool cloak.  In return, the shimmering bracer of protection shall be yours.");
}
if($text=~/what test of cunning/i){
quest::say("Cunning, the true source of all rogue power.  Plan and succeed above us and return to me a bronze disc, a Jester's Mask, and some red face paint to complete the test of cunning.  The crystal mask shall be yours if you do so."); }
}
#END of FILE Zone:airplane  ID:Not_Found -- Rayne 

