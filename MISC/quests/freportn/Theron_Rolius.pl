sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings. $name!  To enter these grounds is to proclaim your faith in the Truthbringer.  In this city you shall find no greater allies than the Knights of Truth.  We urge all knights and clerics who oppose the hand of the Freeport Militia to [join the crusade].");
}
if($text=~/what join the crusade/i){
quest::say("Then take arms against the Freeport Militia!  They serve no one save Sir Lucan. the fallen knight.  From this day forth. I put a bounty upon all militia members.  For every bashed milita helm. a reward!!  If you are not prepared to battle the militia just yet. you may [assist in other areas].");
}
if($text=~/what assist in other areas/i){
quest::say("I have need of one such as you.  I have been awaiting a message. I will need a young acolyte to [retrieve the message] for me or there are also some [fishing duties] I wish to delegate.");
}
if($text=~/i will retrieve the message/i){
quest::say("Thank you. Venture to the Commonlands.  There. by a lake. will be a courier from the great city of Qeynos.  Tell him you are from the Hall of Truth.  He will have a message for you to deliver to Eestyana Naestra.");
}
if($text=~/what fishing duties/i){
quest::say("I have been creating shields for the crusade.  Right now I work on the sharkskin shield for the knights.  I require two shark skins. Unfortunately. most sharks are too dangerous for the squires.  I have begun using [reef shark] skins.  Will you [hunt the reef sharks]?");
}
if($text=~/what reef shark/i){
quest::say("Reef sharks are the smallest and most docile of the sharks.  Even a young acolyte can slay one.  I have heard there are some in the Ocean of Tears.  I need a young acolyte to [hunt reef sharks].  I require their skins.");
}
if($text=~/what hunt the reef sharks/i){
quest::say("I thought I spied the shoulders of a swimmer upon you! Take this large sack. Travel to the Ocean of Tears. There are numerous reef sharks there. I shall require no fewer than two shark skins.   When the full sack is combined and returned to me. I shall reward you."); }
}
sub EVENT_ITEM { 
 if($itemcount{13921} == 1){
	quest::say("Fantastic work. my young knight.  Here is a small token of the my appreciation.  I would offer you a sharkskin shield. but I have made only a few and the paladins are testing them.");
	quest::givecash("0","0","0","3");
	quest::faction("322","1");
	quest::faction("304","-1");
	quest::faction("10103","1");
 } elsif($itemcount{13921} == 4){
	quest::say("Fantastic work. my young knight.  Here is a small token of the my appreciation.  I would offer you a sharkskin shield. but I have made only a few and the paladins are testing them.");
	quest::givecash("0","0","1","3");
	quest::faction("322","1");
	quest::faction("304","-1");
	quest::faction("10103","1");
 } elsif($itemcount{13921} == 2){
	quest::givecash("0","0","0","4");
	quest::faction("322","1");
	quest::faction("304","-1");
	quest::faction("10103","1");
 } else {
	if($class ne 'Paladin') {
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
#END of FILE Zone:freportn  ID:8073 -- Theron_Rolius 

