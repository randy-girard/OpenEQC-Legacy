sub EVENT_SPAWN {
 $npc -> SetAppearance(1);
}

sub EVENT_SAY {
 if($text=~/hail/i){
  quest::emote('shows no reaction to your greeting.');
  }
 elsif($text=~/what trial of agility/i){
  quest::say('I knew you were not the whiff others claimed you to be, are you sure you are [ready] to be tested in agility?');
  }
 elsif($text=~/i am ready/i){
  quest::say('We shall spar then, I hope you are as prepared as you think you are.');
  quest::movepc(106,-190.9,1089.8,-25.2);
  }
 }

sub EVENT_ITEM {
 if(plugin::check_handin(\%itemcount, 18204 => 1)){
  quest::emote('breaks his meditation and quickly grabs your forearms. You feel the raw power in his heavily callused hands. Out of nowhere, his tail sweeps forward and places a shackle upon your wrist. He then points south towards Master Bain and returns to his meditation.');
  quest::summonitem('4190');
 }
 else {
  if($class ne 'Monk'){
   quest::say('You are not a member of my guild. I will not train you!');
   quest::summonitem($item1) if($item1);
   quest::summonitem($item2) if($item2);
   quest::summonitem($item3) if($item3);
   quest::summonitem($item4) if($item4);
   return;
  }
  #Assume it is a discipline tome...
  quest::traindisc($item1) if(quest::isdisctome($item1));
  quest::traindisc($item2) if(quest::isdisctome($item2));
  quest::traindisc($item3) if(quest::isdisctome($item3));
  quest::traindisc($item4) if(quest::isdisctome($item4));
 }
}

 #Submitted by: Senzo aka Fatty Beerbelly
 #Item_IDs : taken from : http://eqitems.13th-floor.org/
 #END of FILE : Zone : cabeast : NPC_ID : 2023 : Grand_Master_Glox
