sub EVENT_SAY {
 if($text=~/are you gomoz/i){
  quest::say('Gomoz!! Why, that is me! I was heading off to be with the elements when I was captured by this smelly ogre. Actually, he is not as smelly as most.');
  }
 elsif($text=~/what of talon southpaw/i){
  quest::say('Master Talon Southpaw!! He was my master. Dead, he became. Off to the elements. I keep his special hand with me. Perhaps I should have it returned. Maybe I shall find a young adventurer to [return the hand to Cabilis].');
  }
 elsif($text=~/i will return the hand to cabilis/i){
  quest::say('Yes!! Return the hand. Here it is. Missing four it is. Within the tower of past pain and torture is where the four lie. Taken by bones similar to myself.');
  quest::summonitem('17037');
  }
 }

  #Submitted by: Senzo aka Fatty Beerbelly
  #Item_IDs : taken from : http://eqitems.13th-floor.org/
  #END of FILE : Zone : timorous : NPC_ID : none : a_dancing_skeleton
