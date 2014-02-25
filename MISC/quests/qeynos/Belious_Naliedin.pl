sub EVENT_SAY { 
if ($text=~/Hail/i){quest::say("Welcome, my name is Belious Naliedin of the League of Antonican Bards. A few years ago, I had finally saved up the money, and I bought this place. I settled in, and have been working here ever since."); }
}
sub EVENT_ITEM { 
 if ($item1=="18717"){
	quest::say("Good day friend, and welcome to the Wind Spirit's Song. Thank you for joining our cause, go speak with Jusean Evanesque, I'm sure you'll fit in well.");
	quest::summonitem("13502");
	quest::exp("100");
 } else {
	if($class ne 'Bard') {
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
#END of FILE Zone:qeynos  ID:1133 -- Belious_Naliedin 

