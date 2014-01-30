sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings $name! I am Megosh Thistlethorn first Ranger of the Storm Reapers of Rivervale. I journeyed many years ago to the Surefall Glade far to the west of our lovely shire. It was there I trained with the human and half-elven rangers that like the Storm Reapers are faithful disciples of Karana. I have returned now to Rivervale to teach our interested young people the ways of a ranger of the Storm Lord. so that we may defend our shire and the wilds of Norrath from the [evil forces] that would see it destroyed.");
}
if($text=~/what evil forces/i){
quest::say("Currently the Death Fist Clan of Orcs. a race of bloodthirsty humanoids concerned only with expanding their territory and slaughtering all who stand in their path. threatens our homeland. The Orcs have long had a minor presence in the Misty Thicket but lately they have been amassing in greater numbers. The Death Fist has been chopping down our trees and quarrying rock from the nearby mountains. We know only that they have been shipping the materials to the commonlands and stockpiling it for what purpose we do not know. As rangers of the Storm Reapers it is our duty to [stop the desecration] of the thicket.");
}
if($text=~/I will stop the desecration/i){
quest::say("First you must outfit yourself for battle with the Death Fists. Seek Bipdo Hargin here in Rivervale and give him this letter. He will instruct you further on getting yourself outfitted for the tasks ahead. Once you have been outfitted in a suit of Thorn Mail Armor return to me and I will instruct you for your [next task].");
quest::summonitem("19627");
}
if($text=~/what next task/i){
quest::say("If you feel you are ready to face the Orcs of Clan Death Fist then journey to the Misty Thicket beyond the protection of the Wall of Cetelt. Hunt the Orcs that are cutting down the trees of the thicket and bring me two of the Orc Lumberjack Axes and two of the Orc Lumberjack Machetes.");
}
if($text=~/what stop the desecration/i){
quest::say("First you must outfit yourself for battle with the Death Fists. Seek Bipdo Hargin here in Rivervale and give him this letter. He will instruct you further on getting yourself outfitted for the tasks ahead. Once you have been outfitted in a suit of Thorn Mail Armor return to me and I will instruct you for your [next task].");
quest::summonitem("19627"); }
}

sub EVENT_ITEM {
 #do all other handins first, then let it do disciplines
 #if($itemcount{} == 1) {
 #} else {
	if($class ne 'Ranger') {
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
#END of FILE Zone:rivervale  ID:19050 -- Megosh_Thistlethorn 
