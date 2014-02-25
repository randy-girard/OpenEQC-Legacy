#npc - Conium Darkblade
#zone - Dagnors Cauldron
#reward - Wasp Poison

sub EVENT_SAY
{
 if($text=~/Hail, $mname/i)
  {
   quest::say("Eh, what do you want?");
  }
 if($text=~/what poison/i)
  {
   quest::emote("grins");
   quest::say("So you've heard of me wasp poison eh? Well, I could make some for you if I had 3 wasp venom sacs...and of course a free of 30 gold...");
  }
}

sub EVENT_ITEM
{
 if(($itemcount{13260} == 3) && ($gold == 30))
  {
   quest::say("Eh, you didn't get this from meh.");
   quest::summonitem(14032);
  }
}