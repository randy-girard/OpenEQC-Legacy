# Grype, Cabilis East, Necro Skull Cap 6
# missing text, receives 30146 (The Broken Glacier Souvenir Mug, from halfling sawshbucliker, FV)
# gives Foot of Candlestick

sub EVENT_SAY {
  if ($text=~/hail/i) {
    quest::say("I will give you the Foot if you get the stein from that Halfling rogue, all in black, from Firiona Vie.");  
  }
}

sub EVENT_ITEM {
  if ($itemcount{30146}==1) { 
    quest::say("Well, as promised, here's your Foot of the candlestick."); 
    quest::summonitem(12852);
  }
}
