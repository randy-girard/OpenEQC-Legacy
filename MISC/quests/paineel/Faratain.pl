sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Salutations $name. If you are here to make use of the forges then feel free to pursue your crafts within this chamber. If you are a new Fell Blade in need of a suit of armor and weapon then I will assist you in crafting [armaments] fitting of a young Shadow Knight.");
}
if($text=~/what armaments/i){
quest::say("You will require this specially prepared Mail Assembly Kit in order to construct a suit of Fell Blade Armor. The materials required vary depending on the piece of armor you desire to craft. Once you have been outfitted in the Fell Blade Armor. return to me and I will present you with a somewhat important [task]. Do you desire to craft a [fell blade helm]. a [fell blade bracer]. [fell blade gauntlets]. [fell blade boots]. [fell blade vambraces]. [fell blade greaves]. or a [fell blade breastplate]?");
quest::say("You will require this specially prepared Mail Assembly Kit in order to construct a suit of Fell Blade Armor. The materials required vary depending on the piece of armor you desire to craft. Once you have been outfitted in the Fell Blade Armor. return to me and I will present you with a somewhat important [task]. Do you desire to craft a [fell blade helm]. a [fell blade bracer]. [fell blade gauntlets]. [fell blade boots]. [fell blade vambraces]. [fell blade greaves]. or a [fell blade breastplate]?");
quest::summonitem("17124");
}
if($text=~/what task/i){
quest::say("The blacksmiths of [Clan Kolbok] craft weapons using an ancient Kobold tradition that has been long forgotten by most of the kobold clans. I believe there is something to be learned from their traditions should we discover their intricacies. Go into the Warrens and locate the chambers of the kobold blacksmiths. There you should be able to find some record of their traditional techniques to return to me here in Paineel where they can be translated and studied.");
}
if($text=~/what fell blade greaves/i){
quest::say("To assemble Fell blade Greaves you will need to obtain two bricks of crude bronze and smelt them in a forge with a Water Flask and this Crude Greaves Mold. Once that is done combine the Crude Bronze Greaves with two Intact Kobold Pelts and two Calcified Tibia in the Mail Assembly Kit.");
quest::summonitem("19636");
}
if($text=~/what fell blade helm/i){
quest::say("To assemble a Fell blade Helm you will need to obtain two bricks of crude bronze and smelt them in a forge with a Water Flask and this Crude Helm Mold. Once that is done combine the Crude Bronze Helm with a Ruined Kobold Pelt and a Calcified Skull in the Mail Assembly Kit.");
quest::summonitem("19631");
}
if($text=~/what fell blade boots/i){
quest::say("To assemble Fell blade Boots you will need to obtain two bricks of crude bronze and smelt them in a forge with a Water Flask and this crude Boot Mold. Once that is done combine the Crude Bronze Boots with two Ruined Kobold Pelts. and two Calcified Foot Bones in the Mail Assembly Kit.");
quest::summonitem("19634"); }
}
#END of FILE Zone:paineel  ID:75047 -- Faratain 

