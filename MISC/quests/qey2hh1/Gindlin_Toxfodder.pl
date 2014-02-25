#npc - Gindlin Toxfodder
#zone - West Karana
#class - rogue

sub EVENT_SAY
{
 if($text=~/Hail, $mname/i)
  {
   quest::say("What do you want?");
  }
 if($text=~/what poison/i)
  {
   quest::emote("grins");
   quest::say("So your here about poison eh? I can make it for ya. Get me a snakes venom sac and the Special Brew made by Crow in Crow's Bar in Qeynos, and of course, a fee of 20 gold.");
  }
}

sub EVENT_ITEM
{
 if(($itemcount{14017} && $itemcount{13901} == 1) && ($gold == 20))
  {
   quest::emote("grins slyly");
   quest::say("Why thank you good sir. One moment please.");
   quest::summonitem(16965);
  }
}
  