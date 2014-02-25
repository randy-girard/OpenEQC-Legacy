sub EVENT_SAY { 
if ($text=~/Hail/i){quest::say("Ah.. Greetings.. I am Lu'Sun, Guild Master of the Silent Fist Clan. Here, our goal is to train our body, mind, and soul to the peak of perfection.");
}
if ($text=~/Tomer Instogle/i){quest::say("Tomer? I think Seta needs someone to go find him.. Go ask her."); }
}
sub EVENT_DEATH { 
quest::summonitem("10116");	
}
sub EVENT_ITEM { 
 if ($item1=="18712"){quest::say("Greetings, and welcome to the Silent Fist Clan. Don our guild tunic, purge your mind and soul, and begin your lifelong devotion to the Clan. Brother Esrinap will introduce you to our lifestyle and begin your training. Be sound, allow your spirit to open up and guide you.");
	quest::summonitem("13507");
	quest::exp("100");
 } else {
	if($class ne 'Monk') {
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
#END of FILE Zone:qeynos2  ID:2068 -- LuSun 

