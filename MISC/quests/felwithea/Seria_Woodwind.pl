sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail friend. I am Seria Woodwind of the Royal Order of the Koada'Vie. the defenders of Felwithe. I assist young Koada'Dal that are called into Tunares service as a paladin in learning the ways of the Koada'Vie so that one-day they too may bear that noble title. Do you [wish to become a member] of the Koada'Vie?");
}
if($text=~/i wish to become a member/i){
quest::say("As a defender of Felwithe you will be required to face much of the evil that inhabits the lands of Norrath. We do not sit idle and wait for the enemy to arrive at our gates before taking action towards the safety of our citizens. Every Koada'Vie initiate should acquire a [suit of armor] to aid in protecting themselves from the weapons of our [enemies].");
}
if($text=~/what suit of armor/i){
quest::say("You require this special Mail Assembly Kit in order to fashion your Felwithe Defenders Armor. The materials necessary for the armors construction vary according to the piece you are attempting to craft. Once you have been properly outfitted return to me and I will provide you with [further instruction]. Do you plan on crafting [Felwithe Defender Gauntlets]. [Felwithe Defender Boots]. an [Felwithe Defender Bracer]. an [Felwithe Defender Helm]. [Felwithe Defender Greaves]. [Felwithe Defender Vambraces]. or an [Felwithe Defender Breastplate]?"); }
if($text=~/what enemies/i){
quest::say("There are sinister creatures in Norrath that threaten the safety and prosperity of the Koada'Dal. The Crushbone Clan of Orcs often emerge from their citadel to the North to murder and pillage the Fier'Dal and Koada'Dal. hoping to expand their territory into the Faydarks. The Arboreans. a species of destructive sentient weeds has returned from ages of slumbering beneath the soil of the Faydarks. Despite these evil forces that are close to our home the greatest threat to both the Koada'Dal and the Fier'Dal are the twisted and wicked Teir'Dal. the dark elf children of Innoruuk.");
}
if($text=~/what felwithe defender helm/i){
quest::say("To assemble a felwithe defender helm you will need to obtain two bricks of crude bronze and smelt them in a forge with a Water Flask and this Crude Helm Mold. Once that is done combine the Crude Bronze Helm with a Large Sylvan Bat Fur and a Giant Wasp Worker Tergite in the Mail Assembly Kit.");
quest::summonitem("19631");
}
if($text=~/what felwithe defender boots/i){
quest::say("To assemble felwithe defender boots you will need to obtain two bricks of crude bronze and smelt them in a forge with a Water Flask and this crude Boot Mold. Once that is done combine the Crude Bronze Boots with two Large Sylvan Bat Fur. and two Giant Wasp Worker Tarsi in the Mail Assembly Kit.");
quest::summonitem("19634"); }
if($text=~/what felwithe defender bracer/i){
quest::say("To assemble a felwithe defender bracer you will need to obtain a brick of crude bronze and smelt it in a forge with a Water Flask and this Crude Bracer Mold. Once that is done. combine the Crude Bronze Bracer with a Large Sylvan Bat Fur and a Giant Wasp Drone Sternite in the Mail Assembly Kit.");
quest::summonitem("19632");
}
if($text=~/what felwithe defender greaves/i){
quest::say("To assemble felwithe defender greaves you will need to obtain two bricks of crude bronze and smelt them in a forge with a Water Flask and this Crude Greaves Mold. Once that is done combine the Crude Bronze Greaves with two Giant Sylvan Bat Furs and two Giant Wasp Warrior Sternites in the Mail Assembly Kit.");
quest::summonitem("19636");
}
if($text=~/what felwithe defender armplates/i){
quest::say("All paladins who have been charged with the defense of Felwithe are called Defenders.");
}
if($text=~/what felwithe defender vambracers/i){
quest::say("To assemble a felwithe defender bracer you will need to obtain a brick of crude bronze and smelt it in a forge with a Water Flask and this Crude Bracer Mold. Once that is done. combine the Crude Bronze Bracer with a Large Sylvan Bat Fur and a Giant Wasp Drone Sternite in the Mail Assembly Kit.");
quest::summonitem("19632"); }
if($text=~/what felwithe defender breastplate/i){
quest::say("To assemble a felwithe defender breastplate you will need to obtain four bricks of crude bronze and smelt them in a forge with a Water Flask and this Crude Breastplate Mold. Once that is done combine the Crude Bronze Breastplate with a Giant Sylvan Bat Fur. and a Giant Wasp Warrior Thorax in the Mail Assembly Kit.");
quest::summonitem("19637");
}
if($text=~/what further instructions/i){
quest::say("Our diviner in the Keepers of the Art have discovered that a Teir`Dal agent of the Ebon Mask. the spies and assassins of the Teir`Dal has been lurking around the Faydarks and communicating intelligence to the orcs of Clan Crushbone. We believe the spy can be lured out of hiding if his primary orc contact. a crushbone centurion by the name of Relgle. is eliminated on route to their rendezvous location. Find this Centurion Relgle. slay him for his crimes against the Koada`Dal. then do the same to his Teir`Dal ally. Bring me both their heads when the deed is done.");
}
if($text=~/what further instruction/i){
quest::say("Our diviner in the Keepers of the Art have discovered that a Teir`Dal agent of the Ebon Mask. the spies and assassins of the Teir`Dal has been lurking around the Faydarks and communicating intelligence to the orcs of Clan Crushbone. We believe the spy can be lured out of hiding if his primary orc contact. a crushbone centurion by the name of Relgle. is eliminated on route to their rendezvous location. Find this Centurion Relgle. slay him for his crimes against the Koada`Dal. then do the same to his Teir`Dal ally. Bring me both their heads when the deed is done."); }
}
#END of FILE Zone:felwithea  ID:61008 -- Seria_Woodwind 

