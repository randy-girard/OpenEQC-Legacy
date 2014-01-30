# Coldain Ring: Quest 2

sub EVENT_SAY {
  if ($text=~/hail/i) {
    quest::say("Hello stranger, I am Boridain, master hunter of the Coldain. Glad to meet you.");
  }
}

sub EVENT_ITEM {
  if ($itemcount{30265} == 1) {
    quest::say("Say! This looks just like the axe my uncle uses. With this I can kill the beast for sure! Now please, be very quiet, I must track my prey. I won't return to Thurgadin without the hide of the rabid tundra kodiak!");
    quest::depop();
    quest::spawn2(116191, 230, 0, 1547, -2459, 306.5, 0);
  }
  if ($itemcount{30266} == 1) {
    quest::say("Yes! I've done it! The vile beast is finally dead. I will at last be revered as the mighty hunter I am. Here is your axe back, I broke it on the killing blow. Take it as proof that you are a friend of the greatest hunter in the history of the Coldain!");
    quest::summonitem(30267);
  }
}

sub EVENT_WAYPOINT {
  $wp2 = $wp + 1;
  # First waypoint = spawn location
  if ($wp2 == 2) { #loc 1760 -2468 192
    quest::say("Hmmm, fresh prints. They're HUGE! This must be it! This hunting stuff is easier than I thought.");
  }
  if ($wp2 == 3) { #loc 2902 -1770 146
    quest::say("Hmm, that wasn't him. Let's see now, if I were a rabid tundra beast where would I go? This way!");
  }
  if ($wp2 == 4) { #loc 973 -1131 212
    quest::say("Boy, all this hunting sure does make ya hungry! Time for a snack.");
    quest::say("Ahh, that's better. Back to the hunt... I think I hear something over yonder. Stay low.");
  }
  if ($wp2 == 5) { #loc 277 -6 -5
    quest::say("Where did that vile beast go now? Wait, what's that over there? Could it be? Only one way to find out!");
  }
  if ($wp2 == 6) { #loc 1286 -1786 175
    quest::emote("yawns.");
    quest::say("All this tracking is makin me mighty sleepy. Time for a little nap. You keep a lookout.");
    quest::emote("stretches.");
    quest::say("Ahh, refreshing! Back to work... I think I smell the beast! This way.");
  }
  if ($wp2 == 7) {  #loc 424 -3464 145
    quest::say("I just don't get it. I thought that was him for sure. I don't see any sign of him now.");
  }
  if ($wp2 == 8) {  #loc 1530 -2491 306
    quest::say("Who am I kidding, I'm no hunter. I'll never be a hunter. I may as well give up and become a miner like dad.");
    quest::spawn2(116545, 231, 0, 1559, -2304, 313, 125.5);
  }
}

# Quest by mystic414

