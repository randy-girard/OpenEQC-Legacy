sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("I am Sir Valeron Dushire. leader of the order of the Knights of Truth.  If your soul shines with purity and strength. I urge you to join our order.  The might of Mithaniel Marr stands behind all who join.  Soon that might will help us free this city from the tyranny of the [Freeport Militia].");
}
if($text=~/what freeport militia/i){
quest::say("The Freeport Militia took control of this city long ago.  They are nothing more than a group of thugs not worthy of respect.  They follow the words of [Sir Lucan] D'Lere.  He has been a thorn in this city's side for too long.  If you wish to aid us in the fight against tyranny. go speak with Jemoz or Sir Theron.  May the Truthbringer shine upon your soul.");
}
if($text=~/what sir lucan/i){
quest::say("Lucan is a bad seed.  You see. I trained Sir Lucan.  He was nothing more than a street rat who was taken in by the Temple of Marr.  The priests taught him and found him to be very agile and strong.  They requested either the Priests of Marr or the Knights of Truth take him on as a squire.  Gygus could not spare the trainers at the time and so we took the boy.  The boy became a man. and a very formidable knight.  Then something [went awry].");
}
if($text=~/what went awry/i){
quest::say("During one of our crusades into the lands of Norrath. we left Sir Lucan in charge of the remaining knights.  He did much good and the people respected him.  He was overtaken by power.  He soon began to hire mercenaries to guard the city. calling them the Freeport Militia.  His true downfall began when he killed Sentry Dillius. a paladin of the Priests of Marr.  His divine powers were stripped from his soul.  He was a paladin no longer.  He and his militia now control the city.  They treat it as their playground and bully the populace. Someone must [stop Sir Lucan].");
}
if($text=~/what stop sir lucan/i){
quest::say("Lucan is a bad seed.  You see. I trained Sir Lucan.  He was nothing more than a street rat who was taken in by the Temple of Marr.  The priests taught him and found him to be very agile and strong.  They requested either the Priests of Marr or the Knights of Truth take him on as a squire.  Gygus could not spare the trainers at the time and so we took the boy.  The boy became a man. and a very formidable knight.  Then something [went awry].");
}
if($text=~/who is sir lucan/i){
quest::say("Lucan is a bad seed.  You see. I trained Sir Lucan.  He was nothing more than a street rat who was taken in by the Temple of Marr.  The priests taught him and found him to be very agile and strong.  They requested either the Priests of Marr or the Knights of Truth take him on as a squire.  Gygus could not spare the trainers at the time and so we took the boy.  The boy became a man. and a very formidable knight.  Then something [went awry].");
}
if($text=~/i want to stop sir lucan/i){
quest::say("Work on the ways of valor before we discuss such things. You are on the righteous path of the Truthbringer. but there is more work to do."); }
}

if($text=~/diggs duggun/i)
{
quest::say("According to this crest on the tunic, you have recovered one of the bones of a lost Paladin [Hero].");
}
if($text=~/what hero/i)
{
quest::say("His name has been long lost but his legend lives on in every young knight who aspires to continue his fight. He attempted to quell an evil that resided within Kithicor, perverting nature itself. Much to his relief, it was an earthly foe he fought against and not a denizen summoned from the planes of evil. Then, suddenly, he was surrounded by dozens of dark elves. He was captured and taken to the Dead to be experimented upon and had his soul twisted by vile necromantic magics. Then the Tier'Dal cast his remains to the winds. Where they landed, no one knew, until now. You have found one of his bones. I hereby charge you with a Holy Quest to bring this Hero's bones back for a burial with honors. Do you [accept], knight?");
}
if($text=~/i accept/i)
{
quest::say("Good! I knew you would. It is one of the highest honors one can receive. Your quest will not be easy for I know not where his other bones lay. A spy of ours within Neriak was able to surmise that six of his bones along with his sword and shield were scattered throughout Norrath. You must search far and wide to find the remaining pieces, as you already have one.. Do not give up. It is now your sacred duty. Once you have retrieved all eight pieces, come back to me and inform me that you [have all the bones].");
}
if($text=~/i have all the bones/i)
{
quest::say("Excellent! You are indeed worthy to bear the title of Holy Knight! Now, about the coffin. I have spoken with Ping Fuzzlecutter, outside the western gates. Ask him about the coffin and once it is made, bring it to Simon Aldicott of Marr. I shall have Simon meet you by the lake in the Commonlands after Ping gives you the coffin.");
}


sub EVENT_ITEM { 
 if($itemcount{18737} == 1){
	quest::summonitem("13554");
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
#END of FILE Zone:freportn  ID:8075 -- Valeron_Dushire 

