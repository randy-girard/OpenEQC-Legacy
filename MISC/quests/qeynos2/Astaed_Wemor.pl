sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings. I am Astaed Wemor of the Paladins of the Temple of Life. We are the defenders of the all-giving Prime Healer.  Are you [here to pray] or are you [here to assist the temple]?");
}
if($text=~/here to pray/i){
quest::say("Then pray long and silently, $name.  Fill your soul with the breath of life.");
}
if($text=~/i am here to assist the temple/i){
quest::say("Good.  There are a few in the congregation who require assistance.  Will you be [traveling afar] or are you [staying close to Qeynos]?");
}
if($text=~/i will be traveling Afar/i){
quest::say("I do not dislike you, but I cannot fully trust one who has yet to prove his service to the Prime Healer.  Perhaps you can assist us in ridding the land of diseased animals.  Priestess Caulria will accept all pelts from rabid beasts.");
}
if($text=~/i will be staying close to qeynos/i){
quest::say("I do not dislike you, but I cannot fully trust one who has yet to prove his service to the Prime Healer.  Perhaps you can assist us in ridding the land of diseased animals.  Priestess Caulria will accept all pelts from rabid beasts."); }
}
sub EVENT_ITEM { 
if ($itemcount{18797} == 1 ){
#Nonexistent='Tattered Note','Astaed Werner,    Please reward this good person. They have eased my pain by contacting my sister, Milea, for me.        Nerissa Clothspinner'
quest::say("So you have helped Nerissa. That is good. Here, then, is a small reward. May you find it useful. Keep fighting the good fight!");
quest::summonitem(quest::ChooseRandom(26022,26023,26024,26025));
quest::givecash("0","8","8","0");
quest::faction("10111","1");
quest::faction("2126","1");
quest::faction("10101","1");
quest::faction("10103","-1");
#quest::faction("Not_Found","1");
quest::exp("400");
 } else {
	if($class != 3) {
		quest::say("You are not a member of my guild. I will not train you!");
		quest::summonitem($item1) if($item1);
		quest::summonitem($item2) if($item2);
		quest::summonitem($item3) if($item3);
		quest::summonitem($item4) if($item4);
		return;
	}
	#assume it is a discipline tome...
	quest::traindisc($item1) if(quest::isdisctome($item1));
	quest::traindisc($item2) if(quest::isdisctome($item2));
	quest::traindisc($item3) if(quest::isdisctome($item3));
	quest::traindisc($item4) if(quest::isdisctome($item4));
 }
}
#END of FILE Zone:qeynos2  ID:2094 -- Astaed_Wemor 

