sub EVENT_SAY { 
if($text=~/what tale/i){
quest::say("Years ago I and Jilan were traveling around the far reaches of this land. One day we came upon an old vah shir who was injured in the mountains. He implored us to help him. Do you wish me to continue?");
}
if($text=~/continue/i){
quest::say("As I was saying this old vah shir required assistance.  We bound his wounds and he asked us to take his armor and give it to a Beastlord worthy of wearing it.  Are you a worthy beastlord?");
}
if($text=~/what cap/i){
quest::say("For the cap you must prove your worth. Go gather up a sun jewel. a mark of feral spirits. an embedded copper figurine. and a frosted stone.");
}
if($text=~/what tunic/i){
quest::say("For the tunic you must prove your worth. Go gather up a moon jewel. a mark of animal spirits. a silver gilded bracelet. and an embedded mithril figurine.");
}
if($text=~/what sleeves/i){
quest::say("For the sleeves you must prove your worth. Go gather a star jewel. a mark of wild spirits. an embedded clay figurine. and a furrowed carving.");
}
if($text=~/what leggings/i){
quest::say("For the leggings you must prove your worth. Go gather a cloud jewel. a mark of natural spirits. an embedded stone figurine. and a blue moonstone.");
}
if($text=~/what mantle/i){
quest::say("For the mantle you must prove your worth. Go gather a sky jewel. a mark of wilderness. and an embedded platinum figurine.");
}
if($text=~/what bracer/i){
quest::say("For the bracer you must prove your worth. Go gather a meteor jewel. a mark of animal training. and an embedded brass figurine.");
}
if($text=~/what boots/i){
quest::say("For the boots you must prove your worth. Go gather an astral jewel. a mark of beast mastery. and an embedded gold figurine."); }
}
#END of FILE Zone:twilight  ID:170147 -- Tamben_Prinon 

