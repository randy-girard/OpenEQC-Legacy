sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Welcome friend. Come dance by our warm fire or have a seat and learn a little bit about the ways of the [spiritist]");
}
if($text=~/what spiritist?/i){
quest::say("We are those in tune with the spirits that surround us. Ancestral spirits with knowledge of the ancients dance around us by this very fire. They guide is through the darkness. Protect us from pain. But a terrible [curse] has befallen the spirits of this thicket, and so it is my duty to train these young Dar Khura in order to aid in the battle that lies ahead.");
}
if($text=~/what curse?/i){
quest::say("The spirits are corrupted by foul magic. The souls of our ancestors have been twisted into an abomination known as [shades]. The corpses of long passed friends and relatives walk through the night seeking to destroy the living. We must destroy the corrupted remains of their old bodies and allow the spirits to roam free once more. Will you help us [release the souls] of our kindred spirits?");
}
if($text=~/I will release the souls/i){
quest::say("I am relieved that you have accepted this dangerous task. I can feel the strength of the spirit within you. There are many kindred spirits aiding us in this battle. If you are in tune with the spiritual realm, you will find that your rituals of magic will result in aid from our spiritual allies. Return to me with the [darkened jawbones] of the lesser shades so that I may release the spirit once more.");
}
if($text=~/what darkened jawbones?/i){
quest::say("We are those in tune with the spirits that surround us. Ancestral spirits with knowledge of the ancients dance around us by this very fire. They guide is through the darkness. Protect us from pain. But a terrible [curse] has befallen the spirits of this thicket, and so it is my duty to train these young Dar Khura in order to aid in the battle that lies ahead."); }
}
sub EVENT_ITEM { 
if($itemcount{30872} == 3 && $itemcount{3336} == 1){
quest::say("I can see that you have a brave heart. You have rescued many of the fallen spirits with little regard to your own welfare. Such selfless acts should not go unrewarded. Please take these gloves and wear them with pride. It is a symbol of [rebirth].");
quest::summonitem("30879");
quest::faction("Not_Found","1"); }
}
#END of FILE Zone:shadeweaver  ID:165120 -- Spiritist_Karina 

