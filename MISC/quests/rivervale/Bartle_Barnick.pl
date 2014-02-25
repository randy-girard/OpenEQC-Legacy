sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Good day $name! If you are a new Druid of the Storm Reapers I have promised Hibbs that I would assist in getting you outfitted for ventures beyond Rivervale but you must bring me a note from Reebo as proof that he sent you. There are many dangers outside of the shire so often leather clothing and a weapon become necessities for a traveling druid.");
}
if($text=~/what moss toe cap/i){
quest::say("To assemble a Moss Toe Cap you will require two [silk thread]. a ruined mossy rat pelt. and a giant thicket rat skull. Once you have the necessary components combine them in your Mail Assembly Kit with this Tattered Coif Pattern.");
quest::summonitem("19555","1");
}
if($text=~/what moss toe bracer/i){
quest::say("To assemble a Moss toe Bracer you will require a [silk thread]. a ruined mossy rat pelt. and a large wood spider tibia. Once you have the necessary components combine them in your Mail Assembly Kit with this Tattered Bracer Pattern.");
quest::summonitem("19558","1");
}
if($text=~/what moss toe sleeves/i){
quest::say("To assemble Moss toe Sleeves you will require two [silk thread]. a mossy rat pelt. and two giant wood spider patella. Once you have the necessary components combine them in your Mail Assembly Kit with this Tattered Sleeves Pattern.");
quest::summonitem("19557","1");
}
if($text=~/what moss toe Tunic/i){
quest::say("To assemble a Moss toe Tunic you will require four [silk thread]. an undamaged mossy rat pelt. and a giant wood spider thorax. Once you have the necessary components combine them in your Mail Assembly Kit with this Tattered Tunic Pattern.");
quest::summonitem("19556","1");
}
if($text=~/what moss toe Leggings/i){
quest::say("To assemble Moss toe Leggings you will require three [silk thread]. two mossy rat pelts. and two giant wood spider femurs. Once you have the necessary components combine them in your Mail Assembly Kit with this Tattered Leggings Pattern.");
quest::summonitem("19560","1");
}
if($text=~/what moss toe boots/i){
quest::say("To assemble Moss toe Boots you will require two [silk thread]. two ruined mossy rat pelts. and two giant wood spider hairs. Once you have the necessary components combine them in your Mail Assembly Kit with this Tattered Boot Pattern.");
quest::summonitem("19561","1");
}
if($text=~/what moss toe gloves/i){
quest::say("To assemble Moss toe Gloves you will require two [silk thread]. a ruined mossy rat pelt. and two large wood spider tarsi. Once you have the necessary components combine them in your Mail Assembly Kit with this Tattered Glove Pattern.");
quest::summonitem("19559","1");
}
if($text=~/what silk thread/i){
quest::say("Silk Thread is sewn by a tailor using a [sewing kit] or a community [loom]. Two spiderling silks combined in the sewing kit or loom will create one silk thread.");
}
if($text=~/what sewing kit/i){
quest::say("Meeka Diggs in the center of Rivervale behind the Fools Gold Tavern may be able to provide you with a sewing kit. There is also a loom near where she peddles her goods.");
}
if($text=~/what loom/i){
quest::say("Meeka Diggs in the center of Rivervale behind the Fools Gold Tavern may be able to provide you with a sewing kit. There is also a loom near where she peddles her goods."); }
}
sub EVENT_ITEM { 
if($itemcount{19629} == 1){
quest::say("It is good to see another of our young people choose the humble life of a druid of Karana. I have assembled something that will allow you to construct some protective leather garments to keep you comfortable in the wilds and help turn aside the weapons of the Storm Reapers enemies. The required components for the leather vary according to which piece of Moss Toe Leather you are planning on crafting. Do you wish to craft a [moss toe cap]. a [moss toe bracer]. [moss toe gloves]. [moss toe boots]. [moss toe sleeves]. [moss toe leggings]. or a [moss toe tunic].");
quest::say("It is good to see another of our young people choose the humble life of a druid of Karana. I have assembled something that will allow you to construct some protective leather garments to keep you comfortable in the wilds and help turn aside the weapons of the Storm Reapers enemies. The required components for the leather vary according to which piece of Moss Toe Leather you are planning on crafting. Do you wish to craft a [moss toe cap]. a [moss toe bracer]. [moss toe gloves]. [moss toe boots]. [moss toe sleeves]. [moss toe leggings]. or a [moss toe tunic].");
quest::summonitem("17124"); }
}
#END of FILE Zone:rivervale  ID:19048 -- Bartle_Barnick 

