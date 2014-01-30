sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail. $name! This is the Deepwater Temple. Here you shall find the wisdom and courage of Prexus. the Ocean Lord. I am glad to see you have an interest. Forgive me if I cut our conversation short. but I have many [Deepwater tasks] to complete.");
}
if($text=~/what deepwater tasks/i){
quest::say("We here at the Deepwater Temple must tend to the [Peacekeeper battlestaff] and the [Deepwater harpoon] as well as other duties such as [ocean protection]. There is always something we must do.");
}
if($text=~/what deepwater harpoon/i){
quest::say("We do not award the Deepwater harpoon to just any paladin.  Nobility is all well and good. but you must still prove yourself.  We have heard rumors of a very distressing matter.  Perhaps it is your calling.  Are you ready to [prove allegiance to Erudin] and earn the Deepwater harpoon?");
}
if($text=~/i am ready to prove allegiance to erudin/i){
quest::say("There is no reason to dislike you. but we of the Deepwater Knights must see more done for our cause before we truly accept you.");
}
if($text=~/what peacekeeper battlestaff/i){
quest::say("Every sentinel in Erudin carries a High Guard battlestaff.  The creation of these weapons is the duty of the Deepwater Temple and the Temple of Divine Light.  Our portion of the task is to send young members to [collect the Pearls of Odus].  These are imbedded into the staff and used to store mystical power.");
}
if($text=~/i want to collect the pearls of odus/i){
quest::say("Then venture to the harbor of Erudin. There. you shall dive into the shark-infested water and search for the Pearls of Odus. They lie upon the grounds of our waters.  Fill the bag I have given you. combine it. and return it to me.  Good luck.");
}
if($text=~/what ocean protection/i){
quest::say("In the name of Prexus. we are sworn to protect all ocean creatures.  We have heard reports of a shark carrying a deadly malady.  We believe she is pregnant.  If she delivers her young to the ocean. it will endanger all other creatures.  We need to find a young paladin to [hunt the diseased shark].");
}
if($text=~/i want to hunt the diseased shark/i){
quest::say("Ah. yes!  Take this bag with you.  When you have collected the remains of the diseased shark and no fewer than three of her young in it. combine them in it and return it to me.  Then. you shall get your reward.");
}
if($text=~/i will hunt the diseased shark/i){
quest::say("There is no reason to dislike you. but we of the Deepwater Knights must see more done for our cause before we truly accept you.");
}
if($text=~/i will collect the pearls of odus/i){
quest::say("Then venture to the harbor of Erudin. There. you shall dive into the shark-infested water and search for the Pearls of Odus. They lie upon the grounds of our waters.  Fill the bag I have given you. combine it. and return it to me.  Good luck.");
quest::summonitem("17939"); }
}

sub EVENT_ITEM {
 #do all other handins first, then let it do disciplines
 #if($itemcount{} == 1) {
 #} else {
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
 #}
}
#END of FILE Zone:erudnext  ID:98063 -- Weligon_Steelherder 
