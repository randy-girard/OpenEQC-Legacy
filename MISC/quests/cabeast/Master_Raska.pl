sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hmmph!!  Expect to be a great master such as I?  Maybe.  You still appear to be a [whiff].");
}
if($text=~/what is a whiff/i){
quest::say("A whiff is the sound of a tail striking air.  A whiff is you.  Inexperienced.  I can help you.  If you [want to earn the second shackle].");
}
if($text=~/yes i want to earn the second shackle/i){
quest::say("Then you shall perform the first rite.  Take this pack.  To the Outlands you will go.  You will fill and combine the pack with one of each of the following - goblin scout beads. a large scorpion pincer. a froglok skipper skipping stone and a sabertooth cub canine.  Return the full first rite pack and you shall prove yourself a monk.");
}
if($text=~/what is shackle of stone/i){
quest::say("Interested in the shackle of stone are we?  They are made for monks who have earned their first two shackles and are ready to climb up to the next rung.  A monk who feels he is ready to wear the shackle of stone must first [perform the task of cleansing].");
}
 if($text=~/I want to earn the second shackle/i){
	quest::say("Then you shall perform the first rite.  Take this pack.  To the Outlands you will go.  You will fill and combine the pack with one of each of the following - goblin scout beads. a large scorpion pincer. a froglok skipper skipping stone and a sabertooth cub canine.  Return the full first rite pack and you shall prove yourself a monk.");
	quest::summonitem(17026);
 }
 if($text =~ /Shackle of Stone'/i) {
	quest::say("Interested in the Shackle of Stone are we? They are made for monks who have earned their first two shackles and are ready to climb up to the next rung. A monk who feels he is ready to wear the Shackle of Stone must first [perform the Task of Cleansing].");
 }
 if($text =~ /perform the Task of Cleansing'/i) {
	quest::say("Go forth to the outer gates and seek out the Iksar Bandits. They have refused to bow to the will of the empire and shall pay dearly for their traitorous ways. They often wear Bandit Masks. If you return with Two Bandit Masks and the Shackles of Dust and Clay then I shall reward you with the Shackle of Stone.");
 }
}

sub EVENT_ITEM { 
 if($itemcount{12427} == 1){
	quest::say("You have succeeded. young $name!  You have proven yourself a skilled monk.  You will now wear the shackle of clay.  You will now be required to increase your intensity of training in hopes that you may soon be able to earn your [shackle of stone].");
	quest::summonitem("4191");
	quest::givecash("0","0","6","0");
	quest::faction("11501","1");
 } elsif($itemcount{4190} == 1 && $itemcount{4191} == 1 && $itemcount{12428} == 2) {
	quest::say("You will get nothing until I hold Two Bandit Masks and the Shackles of Dust and Clay.");
	quest::say("You have done supremely Vaslin . You have earned your Shackle of Stone. Mistress Niska will now help you on your way to earning the Shackle of Rock. May the elements guide you to the next rung.");
	quest::givecash("0","0","6","0");
#Your faction standing with Swifttails got better
#Your faction standing with LegionOfCabilis got better
	quest::summonitem(4192);
 } else {
	if($class ne '') {
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
#END of FILE Zone:cabeast  ID:3432 -- Master_Raska 

