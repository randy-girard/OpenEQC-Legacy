sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail! Ye've come to [serve Halas]. have ye not? We're the Wolves o' the North and it is our task to defend our city from harm.");
}
if($text=~/i have come to serve halas/i){
quest::say("Halas is surrounded by barren arctic tundra. We've many foes. Among them are the [orc troopers]. [ice goblins] and the ever-present polar bears.");
}
if($text=~/what orc troopers/i){
quest::say("So. Ye think yerself strong enough to battle the snow orc troopers?  I pray to the Tribunal that ye are.  If ye can return to me four wrath orc wristbands  from the troopers' bodies. I'll reward ye with the [Seax].");
}
if($text=~/what ice goblins/i){
quest::say("The ice goblins have plagued our community fer some time now.  At times. they even manage to get inside our walls. Fer the most part. they prey on travelers who pass through Everfrost Peaks. Since they're a weak race. we employ our youngest warriors to [protect the pass].");
}
if($text=~/what seax/i){
quest::say("The Seax is a Northman warrior's piercing weapon.  Dinnae confuse this with the [Langseax].  The local rogues have also learned to master the Seax.  I'll only offer it to those who battle the [orc troopers].");
}
if($text=~/what lanseax/i){
quest::say("The Seax is a Northman warrior's piercing weapon.  Dinnae confuse this with the [Langseax].  The local rogues have also learned to master the Seax.  I'll only offer it to those who battle the [orc troopers].");
}
if($text=~/what langseax/i){
quest::say("The Seax is a Northman warrior's piercing weapon.  Dinnae confuse this with the [Langseax].  The local rogues have also learned to master the Seax.  I'll only offer it to those who battle the [orc troopers].");
}
if($text=~/i will battle the orc troopers/i){
quest::say("So. Ye think yerself strong enough to battle the snow orc troopers?  I pray to the Tribunal that ye are.  If ye can return to me four wrath orc wristbands  from the troopers' bodies. I'll reward ye with the [Seax].");
}
if($text=~/what is the Langseax/i){
quest::say("The Seax is a Northman warrior's piercing weapon.  Dinnae confuse this with the [Langseax].  The local rogues have also learned to master the Seax.  I'll only offer it to those who battle the [orc troopers]."); }
}

sub EVENT_ITEM
{
 if($itemcount{12223} == 4)
  {
   quest::say("Well done! You've proved yerself worthy o' this!");
   quest::summonitem(7322);
   quest::exp(300);
 } else {
	if($class ne 'Warrior') {
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
#END of FILE Zone:halas  ID:29056 -- Lysbith_McNaff 

