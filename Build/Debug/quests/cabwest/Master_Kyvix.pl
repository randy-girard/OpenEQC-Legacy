sub EVENT_SAY { 
  if ($text=~/hail/i) {
    quest::say("Quite busy!! Quite busy!! Things must be done. [New components] to be collected!!");  
  }
  if ($text=~/New components/i) {
    quest::say("Yes, yes!! I will need components from beyond the gates. I must find an [apprentice of the third rank].");
  }
  if ($text=~/apprentice of the third rank/i) {
    quest::say("If you truly be an apprentice of the third circle, then there is a Dark Binder skullcap to be earned. Take this sack and fill it with a creeper cabbage, a heartsting telson with venom, brutling choppers and a scalebone femur. When they are combined within the sack, you may return it to me with your third rank skullcap and and we shall bid farewell to the title, 'apprentice."); 
    quest::summonitem(17024); 
  }
  if ($text=~/true mission/i) {
    quest::say("I have been waiting for a Nihilist to return. His name was Ryx and I fear his love of ale and the high seas has kept him from his mission. All I want you to do is find him. He should be disguised as a worker and he will give you a tome to bring to me. Return it with your Dark Binder Cap. I am sure that is simple enough for one as simple as you. Be sure to give him this."); 
    quest::summonitem(12848); 
  }
  # missing text
  if ($text=~/Kor Sha Candlestick/i) { 
    quest::say("I need the foot and stem of my candlestick. The Stem comes from Sarnaks. The foot has been stolen by Gripe, in East Cabilis.");  
  }
}

sub EVENT_ITEM {
  # full component sack + skull cap 3 -> skull cap 4, text missing
  if ($itemcount{12420}==1 && $itemcount{4262}==1) { 
    quest::say("Well done, here's your fourth rank skull cap. You can now start your [true mission]."); 
    quest::exp(200); 
    quest::faction(193,20);
    quest::faction(24,20);
    quest::summonitem(4263);
  }
  # receives Tomes and skull cap 4 -> skull cap 5, text missing
  if ($itemcount{14382}==1 && $itemcount{4263}) { 
    quest::say("Well done, here's your fifth rank skull cap. You can now track down the [Kor Sha Candlestick]."); 
    quest::exp(200); 
    quest::faction(193,20);
    quest::faction(24,20);
    quest::summonitem(4264);
  }
  # receives Stem of Candlestick + Foot of Candlestick + Skull cap 5 -> skull cap 6, text missing
  if ($itemcount{12853}==1 && $itemcount{12852} && $itemcount{4264}) { 
    quest::say("Well done, here's your sixth rank skull cap. I can no longer help you but Master Glosk said he would need the help of a skilled necromancer. Tell him that you are the new revenant."); 
    quest::exp(200); 
    quest::faction(193,20);
    quest::faction(24,20);
    quest::summonitem(4265);
  } 
}

#END of FILE Zone:cabwest  ID:3430 -- Master_Kyvix 

