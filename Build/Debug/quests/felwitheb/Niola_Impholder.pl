sub EVENT_SAY { 
  if($text=~/Hail/i){
    quest::say("Greetings, $name . Welcome to the home of the Keepers of the Art. I am in need of spell components. Would you be willing to [fetch] some for me?");
  }
  if($text=~/fetch/i){
    quest::say("What I need are some bat wings for a spell I am researching. If you bring me back four bat wings, I would be willing to reward you with a scroll.");
  }
}
sub EVENT_ITEM { 
  if($itemcount{13068} == 4)
  {
    quest::say("Ah yes.  These are exactly what I need.  Thank you very much.");
    quest::summonitem(15310);
    quest::exp(350);
  }
  if($item1 == 18777)
  {
    quest::say("Welcome. I am Niola Impholder. Master Magician of the Keepers of the Art. Here is our guild robe. You have much to learn. so let's get started.");
    quest::summonitem(13592);
    quest::exp(100);
  }
  if($item1 == 18902)
  {
    quest::say("She is still alive? OH, thank you for this news.");
    quest::summonitem(1307);
    quest::exp(30000);
    quest::ding();
  }
}
#END of FILE Zone:felwitheb  ID:62021 -- Niola_Impholder 

