sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings. I seek the ones who stalk through the forests protecting it. If you are one known as a ranger. submit to my will and become stronger.  The tasks I set forth will not be easy. Wood Elf.  Are you ready to submit to my will?");
}
if($text=~/i am ready to submitt my will/i){
quest::say("That is good. for there is nothing like the wrath of nature. woodland warrior.  And Nature's wrath shall you be. with this armor to protect you in your struggle.  I shall forge a coif. breastplate. sleeves. bracers. gauntlets. leggings. and boots for you.");
}
if($text=~/what coif/i){
quest::say("This coif shall protect you from battle and the elements.  What I require of you are these: an unadorned chain coif and three pieces of crushed coral.  Do not waste precious time!");
}
if($text=~/what breastplate/i){
quest::say("Even as the hardest tree in the forest gains protection from its bark. so shall you gain the protection of this breastplate.  Bring these components for me - an unadorned chain tunic and three flawless diamonds.");
}
if($text=~/what sleeves/i){
quest::say("I require unadorned chain sleeves. as well as three flawed emeralds.  Do this so that I may grant you them as a gift for your diligence.");
}
if($text=~/what bracers/i){
quest::say("This shall help shield your forearms from any stray blows.  Bring me an unadorned chain bracelet and three crushed flame emeralds.");
}
if($text=~/what gauntlets/i){
quest::say("Bring me these items. for I will not grant you your pair until then - a pair of unadorned chain gauntlets and a set of three crushed topaz.");
}
if($text=~/what leggings/i){
quest::say("A pair of leggings you seek?  I seek something as well.  Bring me a pair of unadorned chain leggings and three flawed sea sapphires.  Go now.  The struggle continues as we speak.");
}
if($text=~/what boots/i){
quest::say("For the boots. I shall require a pair of unadorned chain boots as well as three pieces of crushed black marble."); }
}
#END of FILE Zone:skyshrine  ID:114264 -- Nalelin_Fe`Dhar 

