sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings, good $name.  My name is Zamel and I have the much coveted duty of pulling sludge up out of the pools and [aqueducts] of Qeynos..");
}
if($text=~/what aqueducts/i){
quest::say("Aye, the aqueducts are a horrible place.  I have heard rumors of horrible [beasts] who live under the city in the water and just the other day, a child playing in the water just up and disappeared!");
}
if($text=~/what beasts/i){
quest::say("I know nothing of what or where they may be, just rumors, friend.  However, should you foolishly choose to enter the waters to brave the possibilities and return with some evidence of the [child's] fate, I would be most appreciative.");
}
if($text=~/what child/i){
quest::say("The daughter of one of our own guardsmen is missing.  He has offered me a reward for any information about her disappearance.  So, if you find out anything, let me know and I will cut you in on the reward."); }
}
sub EVENT_ITEM { 
if($itemcount{13713} == 1){
quest::say("Yes,  I do believe this was the child's dress.  Here, take this as your share of the reward.  Her father will be heartbroken..");
quest::summonitem("10018","1");
quest::givecash("0","4","0","0");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("10102","-1");
quest::faction("10108","-1");
quest::faction("Not_Found","1"); }
}
#END of FILE Zone:qeynos  ID:1088 -- Zamel 

