sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Salutations! The Song Weavers are always glad to add a new voice to the choir.  In addition to your voice. will you also [fetch spiderling silk]?  We need some to replace our worn lute strings.  Carry out this task in high tempo and we will show our gratitude.");
}
if($text=~/how fetch spiderling silk?/i){
quest::say("Very spirited of you!!  Gather four spiderling silk and return them to me.  Good hunting. my friend!!");
}
if($text=~/where fetch spiderling silk?/i){
quest::say("Very spirited of you!!  Gather four spiderling silk and return them to me.  Good hunting. my friend!!");
}
if($text=~/fetch spiderling silk?/i){
quest::say("Very spirited of you!!  Gather four spiderling silk and return them to me.  Good hunting. my friend!!"); }
}

sub EVENT_ITEM { 
 if($itemcount{18783} == 1){
	quest::say("Greetings. friend. I am Sylia.  I see that you wish to join our humble guild.  Good.  Here is a gift for you - your guild tunic.  Let's get started with your training. shall we?");
	quest::summonitem("13534");
 } elsif($itemcount{9894} == 2 && $itemcount{13099} == 3){
	quest::say("Well done! Do you have the rest?");
	quest::say("Splendid job!  Now if you can just keep a tune. you'll be a fine bard.");
	quest::summonitem("13000");
	quest::givecash("0","0","1","0");
	quest::faction("Not_Found","1");
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
#END of FILE Zone:gfaydark  ID:54088 -- Sylia_Windlehands 

