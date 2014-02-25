sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("You tread upon sacred gound. Erudite. None may go further unless they [have business with the Overlord]. Or. if you're looking to gain favor with the heretics and need a little coin. I have a [job] for you.");
}
if($text=~/i have business with the overlord/i){
quest::say("The Overlord only sees those he calls forward. If you have a summons from him. I will escort you and announce your arrival. If not. then forget whatever business you may have had here. If you wish an audience. then go speak to Sheltian below. He may be able to help you.....if you help him.");
}
if($text=~/what job/i){
quest::say("There are many campaigns we administer from within our city. Paineel. Some of these campaigns are threatened or hindered by annoyances. One of these annoyances are the kobolds that live in the filth of a cave not far from here. Find that lair and kill as many of these beasts as you can. For every kobold molar you return you shall be rewarded."); }
}
sub EVENT_ITEM { 
if($itemcount{1761} == 1){
quest::say("Not bad. $name. Here is your reward. If you slay enough of these dogs. Sheltian may have a more important task for you to perform.");
quest::givecash("8","2","0","0");
quest::faction("Not_Found","-1");
quest::faction("Not_Found","-1");
quest::faction("302","1");
quest::faction("Not_Found","-1");
quest::faction("Not_Found","-1"); }
}
#END of FILE Zone:paineel  ID:75074 -- Royal_Guard_Lilkus 

