sub EVENT_SAY { 
if($text=~/Hail/i){quest::say("So you are the next pathetic maggot I have the displeasure of training to be a useful Shadowknight of the Lodge of the Dead. First you must get yourself outfitted in a suit of [armor]. those rags you wear can not even contain the stench of your miserable hide and will do no good protecting it from the edge of an enemy's blade."); }
if($text=~/armor/i){quest::say("Seek Krivn S'Tai in the Commoner quarter of Neriak and give him this request parchment. Krivn S'Tai has been paid in advance by the Lodge of the Dead for the requested service. Simply give him the request parchment and he will instruct you further. When you have outfitted yourself in a suit of armor return to the Lodge of the Dead and I will grant you [another task].");
quest::summonitem(19584); }
if($text=~/task/i){quest::say("Ah. you are eager to advance further within the Lodge of the Dead. Although it is my duty to aid your training. do not allow your arrogance to blind you to your lowly position amongst the Queens most loyal subjects. Your next task is to assist the construction of a [weapon] and [shield] worthy of being wielded by a Shadowknight of the Lodge of the Dead."); }
if($text=~/weapon/i){quest::say("Beyond the mouth of Neriak lies the Nektulos Forest. There the walking dead can be found digging their way from the ashen soil of the [Ultricle]. their flesh cured and hardened and bones strengthened from the minerals and volcanic ash in which they rested in death. Return some of these undead to the rest they have abandoned and bring to me some Leathered Zombie Flesh. a Petrified Humerus bone. and a Petrified Rib bone."); }
if($text=~/shield/i){quest::say("The bones of the dead that dig from their graves at the [Ultricle] in the Nektulos Forest have been strengthened by the minerals and ashen soil. Return some of these walking dead to the rest they have abandoned and bring to me four Petrified Femurs."); }
if($text=~/Ultricle/i){quest::say("In the Nektulos Forest near the pass to the Lavastorm Mountains is a gray region barren of life whose boundaries are marked by carved stones displaying runes the color of freshly spilt blood. The area the runed stones mark is called the Ultricle. It is where the weak. dead. and dying Teir'Dal that have not earned a noble burial are left to rot and one day if they are lucky join the ranks of the Undead."); }
}

sub EVENT_ITEM { 
 if ($item1=="18757"){quest::say("Thanks.");
	quest::summonitem("13586");
	quest::exp("100");
 } else {
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
 }
}
#END of FILE Zone:neriakc  ID:42067 -- Ulraz_S`Lon 

