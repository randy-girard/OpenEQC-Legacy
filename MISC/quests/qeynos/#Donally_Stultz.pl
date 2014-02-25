# #Donally Stultz in qeynos

sub EVENT_SAY {
 if($text =~ /Bloodsaber/i) {
	quest::say("Of course I'm a Bloodsaber, you fool! I've just returned from the Plains of Karana where I was reveling in the glory of the Plaguebringer. Now then, since I see that this foolish investigator is with you, I suppose you want me to sign a confession document or something like that? Well, let's have it then!");
	#should drop head
 }
}


sub EVENT_ITEM {
	if ($itemcount{2344} == 1) {
		quest::emote("crumples the document into a ball, throws it to the ground and spits in your face, yelling, 'You are a fool if you really believe I would sign such a thing. Prepare to die!'"); 
		quest::attack($name);
	}
}

sub EVENT_DEATH {
	quest::say("You...can not...defeat us all...");
}