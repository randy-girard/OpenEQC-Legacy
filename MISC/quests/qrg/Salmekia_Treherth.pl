sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Welcome to Surefall Glade $name. the home of the Jaggedpine Treefolk. I help teach young druids the ways of our people. We have worshipers of both Karana. the Storm Lord. and Tunare. the All Mother. living here in the glade. If you are a new druid I will help you obtain a [suit of clothing] that will offer comfort and protection while working in the wilds and help protect you from the weapons of the Gnolls that wish to take these lands.");
}
if($text=~/what suit of clothing/i){
quest::say("You must use this specially prepared Curing Kit to craft the clothing. Each article of clothing requires different materials for its construction. Do you plan on crafting Pine Druid [Gloves]. Pine Druid [Boots]. a Pine Druid [Bracer]. a Pine Druid [Cap]. Pine Druid [Leggings]. Pine Druid [Sleeves]. or a Pine Druid [Tunic]? When you have been outfitted and are ready I will tell you of a [task] that you can assist with.");
}
if($text=~/what cap/i){
quest::say("To craft a Pine Druid Cap you require two [silk thread]. a ruined gnoll leather cap. a large whiskered bat fur. and a large field rat pelt. Once you have the necessary components combine them in your Curing Kit with this Tattered Coif Pattern.");
quest::summonitem("19555","1");
}
if($text=~/what gloves/i){
quest::say("To craft Pine Druid Gloves you require two [silk thread]. ruined gnoll leather gloves. two giant field rat whiskers. and a large king snake skin. Once you have the necessary components combine them in your Curing Kit with this Tattered Glove Pattern.");
quest::summonitem("19559","1");
}
if($text=~/what bracers/i){
quest::say("To craft an Pine Druid Bracer you require a [silk thread]. a ruined gnoll leather bracer. and a giant field rat whiskers. Once you have the necessary components combine them in your Curing Kit with this Tattered Wristband Pattern.");
quest::summonitem("19558","1");
}
if($text=~/what leggings/i){
quest::say("To craft Pine Druid Leggings you require three [silk thread]. ruined gnoll leather leggings. two large whiskered bat furs. and a giant field rat pelt. Once you have the necessary components combine them in your Curing Kit with this Tattered Pant Pattern.");
quest::summonitem("19560","1");
}
if($text=~/what tunics/i){
quest::say("To craft a Pine Druid Tunic you require four [silk thread]. a ruined gnoll leather tunic. a giant whiskered bat fur. and a giant field rat pelt. Once you have the necessary components combine them in your Curing Kit with this Tattered Tunic Pattern.");
quest::summonitem("19556","1");
}
if($text=~/what silk thread/i){
quest::say("Silk Thread is sewn by a tailor using a sewing kit or a community loom. Two spiderling silks combined in the sewing kit or loom will create one silk thread.");
}
if($text=~/what sleeves/i){
quest::say("To craft Pine Druid Sleeves you require two [silk thread]. ruined gnoll leather sleeves. two large whiskered bat furs. and a giant field rat pelt. Once you have the necessary components combine them in your Curing Kit with this Tattered Sleeves Pattern.");
quest::summonitem("19557","1");
}
if($text=~/what tunic/i){
quest::say("To craft a Pine Druid Tunic you require four [silk thread]. a ruined gnoll leather tunic. a giant whiskered bat fur. and a giant field rat pelt. Once you have the necessary components combine them in your Curing Kit with this Tattered Tunic Pattern.");
quest::summonitem("19556","1");
}
if($text=~/what task/i){
quest::say("We druids seek to live in harmony with nature. taking only what we need from the land and the creatures that inhabit it. Although the City of Qeynos is a noble place. there are people in the city that do not share our reverence for nature and poach the animals of the Karanas needlessly. Even worse than these poachers. whom the rangers of the Jaggedpine Treefolk constantly seek to deter. are the despicable worshipers of Bertoxxulous that hide in the sewers and catacombs of Qeynos. These wicked individuals are known as the [Bloodsabers].");
}
if($text=~/what bloodsabers/i){
quest::say("The Bloodsabers are responsible for a number of atrocities including the spreading of the diseases which have been inflicting the wolves and bears of the Qeynos Hills and the recent poisoning of the farmers fields in the Plains of Karana. Recently we have discovered that a Bloodsaber defiler has been attempting to poison the waters of Surefall Glade. Find this individual and deal with him accordingly. I doubt that this individual will surrender willingly. If need be eliminate them and bring me their head."); }
}
sub EVENT_ITEM { 
if($itemcount{20268} == 1){
quest::say("It is a shame that some people decide to throw away their humanity with the worship of evil deities. Your actions have saved the lives of many creatures that rely on the waters of this glade. Take this Rusty Pine Druid Scimitar and sharpen it in a forge with a sharpening stone. It may take you several attempts if you are unfamiliar with the process. Once that is done return to me with the Sharpened Pine Druid Scimitar. a Gnoll Fang. and a Large King Snake Skin.");
quest::summonitem("20258","1");
quest::faction("315","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","-1");
quest::faction("Not_Found","1"); }
}
#END of FILE Zone:qrg  ID:4247 -- Salmekia_Treherth 

