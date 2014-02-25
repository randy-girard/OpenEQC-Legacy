sub EVENT_SAY { 
 if($text=~/Hail/i){
	quest::say("Welcome to Kelethin. $name!  I am Maesyn Trueshot. commander of Faydark's Champions.  We are the finest marksmen in all of Norrath.  With our trusty [Trueshot longbows] we can miss no target regardless of the distance or the conditions.");
 }
 if($text=~/What trueshot longbows/i){
	quest::say("The Trueshot Longbow was created by my famed father. Eldin Trueshot. It is quite accurate and takes a ranger's skill to wield. We use our new recruits to [gather materials] needed by my father.  We shall soon begin to release the formula to good elves so all may fletch such a bow.");
 }
 if($text=~/I will gather materials/i){
  if($class eq "Ranger") {
	quest::say('Take this pack. Go to Kaladim, find Trantor Everhot and ask for dwarven wire. Then go to Freeport to meet Jyle Windshot. Search the inns for him and ask him for treant wood. Then, collect some spiderling silk from spiderlings and finally, in Steamfont, we have the permission of the gnomes to use any micro servos we find while destroying rogue spiders. Combine them all and return the pack to me.');
	quest::summonitem(17367);
  } else {
	quest::say("Faydark's Champions cannot call you foe. but you have yet to earn our trust.");
  }
 }
 if($text =~ /correct components/i) {
	quest::say('Now that I have crafted the Treant Bow Staff, you shall need one Planing Tool, one Treant Bow Staff, one Micro Servo and one spool of Dwarven Wire. These items will be used with your Fletching Kit as all other bows. Be forewarned, only a Master Fletcher can create such a bow and even a master fails from time to time. Good Luck.');
 }
 if($text =~ /next incarnation/i) {
	quest::say("The Trueshot Longbow was once enchanted by the Koada'Dal enchanters.  Once it was enchanted now it is no more.  I am sure if you were ask the Koada'Dal [where the enchanted bows] are you will get an answer.");
 }
}

sub EVENT_ITEM {
 if($itemcount{12112} == 1) {
	quest::say('I shall see that my father gets the materials. I hope this can be of use to you. It will serve as your starting point toward fletching a Trueshot longbow. It is unfortunate that we are unable to enchant the bow to its [next incarnation], but it is still a fine weapon. You do know the [correct components] needed for fletching such a bow, do you not?');
	quest::givecash(0, 6, 0, 0);
	quest::summonitem(8091);
#Your faction standing with Faydark's Champions got better. 
#Your faction standing with King Tearis Thex got better. 
#Your faction standing with Clerics of Tunare got better. 
#Your faction standing with Soldiers of Tunare got better. 
#Your faction standing with Crushbone Orcs got worse. 
 } else {
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
 }
}
#END of FILE Zone:gfaydark  ID:54084 -- Maesyn_Trueshot 

