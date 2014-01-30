sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("You $name.  We hear of you.  We need help.  You [help Crakneks] or you [help self]?");
}
if($text=~/i want to help crakneks/i){
quest::say("Ha!!  We hear of great adventurer.  You?!!  Me no think so.  You prove self to Crakneks before you help us.  Go to Innoth.. Innotu.. Innooth.. Arghh!!  You go to outside Oggok.  Find fat alligator bit Lork brother in two.  Bring brother. Nork. body back.  Then me know you strong.");
}
if($text=~/i want to help self/i){
quest::say("You help self to leave Oggok before me bash you.  We no need cowards."); }
}

sub EVENT_ITEM
{
 if($itemcount{20523} == 1)
  {
   quest::say("Ay danks. Take dis to Uglan.");
   quest::summonitem(16547);
  } elsif($itemcount{1717}
  {
   quest::say("Arg! Dem damned Orcs and Dark Elves! To da hells with dem! I be wantin revenge! Bring me da hearts of da dark elf ammbassador's K'ryn who can be locat'd in da shamen tun'ls, and D'vinn who can be located in da crushbone with da orc emperor.");
  } elsif($itemcount{13227} == 1)
  {
   quest::say("Ahahaha! Da basterds! Here be a reward for ye!");
   quest::summonitem(13355);
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
#END of FILE Zone:oggok  ID:49040 -- Lork 

