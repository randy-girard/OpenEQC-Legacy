sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("What is this I see before me? A would-be hero of the Dead? You reek of false bravado. I have seen others much stronger than you meet their fate at the end of a blade. I see no reason to continue our conversation. How can one such as you assist with my [delegated duties]?");
}
if($text=~/what delegated duties/i){
quest::say("Why do you ask? I know why. Glory has captured your affections. Those who seek glory find death. Still. you may be of some use. Before I assign you a task. I must be assured of your power. I require you to [perform a test].");
}
if($text=~/i will perform a test/i){
quest::say("In the Lavastorm Mountain Range there have been sightings of a paladin. one Sir Lindeal. He has compromised our routes between.. well. that is none of your concern. All you need to know is that this paladin of the Temple of Marr must be sent to his everlasting life. Do so and prove your worth to us. I await your proof. Use no assistance. If you are truly his equal then I shall know. I know all."); }
}

sub EVENT_ITEM {
 #do all other handins first, then let it do disciplines
 #if($itemcount{} == 1) {
 #} else {
	if($class ne 'Shadowknight') {
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
 #}
}
#END of FILE Zone:neriakc  ID:42043 -- Loveal_S`Nez 
