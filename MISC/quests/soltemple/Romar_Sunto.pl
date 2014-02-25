#npc - Romar Sunto
#class - enchanter
#zone - Temple of Solusek Ro
#reward - Tashania Spell

sub EVENT_SAY
{
 if($text=~/Hail, $mname/i)
  {
   quest::say("Greetings $name. I am $mname of the Temple of Solusek Ro. I am the guardian of a very powerful illusionist spell. If you are an illusionist you will need to complete a [test] to determine if you are worthy of this spell.");
  }
 if($text=~/what test/i)
  {
   quest::say("You will have to collect coins from various cities in Norrath. There are ten cities and they are: Ak'anon, Kaladim, Erudin, Qeynos, Halas, Oggok, Gukta, Neriak, Felwithe, and Freeport. Do you wish to proceed?");
  }
 if($text=~/no/i)
  {
   quest::say("Very well. Come back when you are ready.");
  }
 if($text=~/yes/i)
  {
   quest::say("Very well. Put the ten coins in this pouch. Return to me when you have collected them all. Also, I can sell you a [book] that will help you find these coins.");
   quest::summonitem();
  }
 if($text=~/what book/i)
  {
   quest::say("Give me 50 pieces of gold and I will give you a book that will tell you where all the coins are.");
  }
}

#incomplete
 