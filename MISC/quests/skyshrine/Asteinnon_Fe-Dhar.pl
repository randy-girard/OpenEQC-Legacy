sub EVENT_SAY { 
if($text=~/what armor/i){
quest::say("For you I shall make a coif. breastplate. sleeves. bracers. gauntlets. leggings. and boots.  Each piece is a quest unto itself.  To seek the components. you must search the lands for them and test the power of the spirit within.");
}
if($text=~/what coif/i){
quest::say("The coif I shall make will be comprised of an unadorned chain coif and three crushed onyx sapphires.  I shall be waiting.");
}
if($text=~/what breastplate/i){
quest::say("A breastplate to protect the spirit within.  I shall make one for you granted that you retrieve the components I shall need.  An unadorned chain tunic and three pieces of black marble.  I await your return.");
}
if($text=~/what bracers/i){
quest::say("A bracer of mystic power I shall grant you.  All I require is the acquisition of an unadorned chain bracer and three crushed opals.");
}
if($text=~/what sleeves/i){
quest::say("Sleeves I shall make upon receipt of unadorned chain sleeves and a set of three jaundice gems.  Complete this simple task and they are yours.");
}
if($text=~/what gauntlets/i){
quest::say("I shall require three crushed lava rubies and an unadorned pair of chain gauntlets to complete my ritual.");
}
if($text=~/what leggings/i){
quest::say("You seek leggings?  Then provide for me unadorned chain leggings and three chipped onyx sapphires and I will give them to you for your service.");
}
if($text=~/what boots/i){
quest::say("These boots will help you in your never-ending quest.  I shall grant them upon receipt of a pair of unadorned chain boots and three crushed flame emeralds.");
}
if($text=~/what bracer/i){
quest::say("A bracer of mystic power I shall grant you.  All I require is the acquisition of an unadorned chain bracer and three crushed opals."); }
}
#END of FILE Zone:skyshrine  ID:114261 -- Asteinnon_Fe`Dhar 

