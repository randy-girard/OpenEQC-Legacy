sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Welcome to the holy Temple of Life.  Your presence shows an interest in our ways.  We are the followers of the [Prime Healer] and would gladly open our arms to any who [serve Rodcet Nife].  Do we not all owe our lives to the sustaining force of the Prime Healer?");
}
if($text=~/prime healer/i){
quest::say("The Prime Healer is Rodcet Nife.  The one whose power flows through your body.  He is the air that you breathe.  To serve Him is to serve every living creature.  Do you wish to [serve the Prime Healer] or do you [need more time for contemplation]?");
}
if($text=~/serve the rodcet nife/i){
quest::say("The Prime Healer is Rodcet Nife.  The one whose power flows through your body.  He is the air that you breathe.  To serve Him is to serve every living creature.  Do you wish to [serve the Prime Healer] or do you [need more time for contemplation]?");
}
if($text=~/serve the prime healer/i){
quest::say("The Temple of Life smiles upon you. friend..  but such a delicate matter can only be entrusted to our most loyal members.");
}
if($text=~/need more time for contemplation/i){
quest::say("I understand.  Sometimes a person can be filled with the lies of so many other false deities that he cannot see the truth when it lies in front of him."); }
}
sub EVENT_ITEM { 
if($itemcount{13949} == 1){
quest::say("I see you have rid our land of a beast tainted with the blood of Bertoxxulous.  The Prime Healer shall look favorably upon your soul.  Here is our thanks and just in case the beast may have bitten you...");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","-1");
}
if($itemcount{13949} == 3){
quest::say("I see you have rid our land of a beast tainted with the blood of Bertoxxulous.  The Prime Healer shall look favorably upon your soul.  Here is our thanks and just in case the beast may have bitten you...");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","-1");
}
if($itemcount{13298} == 1){
quest::say("Oh dear.  The disease has spread to the realm of the Treefolk.  It must have been difficult to kill such a large and rabid beast.  Here.  Take one of my personal scrolls as thanks for such a brave act of devotion.  I pray you can use it. If not. then perhaps one of your fellow adventurers can.");
quest::summonitem("15226","1");
quest::givecash("0","0","0","2");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","-1");
}
if($itemcount{13298} == 1 && $itemcount{13949} == 1){
quest::say("Oh dear.  The disease has spread to the realm of the Treefolk.  It must have been difficult to kill such a large and rabid beast.  Here.  Take one of my personal scrolls as thanks for such a brave act of devotion.  I pray you can use it. If not. then perhaps one of your fellow adventurers can.");
quest::summonitem("15226","1");
quest::givecash("0","0","0","2");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","-1");
}
if($itemcount{13419} == 2){
quest::say("I see you have rid our land of a beast tainted with the blood of Bertoxxulous.  The Prime Healer shall look favorably upon your soul.  Here is our thanks and just in case the beast may have bitten you...");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","-1");
}
if($itemcount{13298} == 3 && $itemcount{13949} == 1){
quest::say("Oh dear.  The disease has spread to the realm of the Treefolk.  It must have been difficult to kill such a large and rabid beast.  Here.  Take one of my personal scrolls as thanks for such a brave act of devotion.  I pray you can use it. If not. then perhaps one of your fellow adventurers can.");
quest::summonitem("15226","1");
quest::givecash("0","0","0","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","-1"); }
}
#END of FILE Zone:qeynos2  ID:2082 -- Priestess_Caulria 

