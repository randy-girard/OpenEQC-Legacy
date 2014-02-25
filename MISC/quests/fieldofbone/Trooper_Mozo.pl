sub EVENT_SAY {
 if($text=~/hail/i){
  quest::emote('looks upon you smugly.');
  quest::say('And what are you? Some sort of adventurer. Bah!! You will be shaken by the first undead you come across. Wetting your paints you shall be. Ha Ha!! I doubt you could even [kill the decaying skeletons]!');
  }
 elsif($text=~/i will kill the decaying skeletons/i){
  quest::say('You kill skeletons?!! I think not!! They will bounce you with no trouble at all. Ten silvers says you cannot collect four bone chips!! When Velious melts!! Hah!');
  }
 }

sub EVENT_ITEM {
 if(plugin::check_handin(\%itemcount, 13073 => 4)){
  quest::emote('gasps in astonishment.');
  quest::say('Wha...? This!! But... I... Why you... I oughta.. All right!! A bet is a bet. Here you go. A few silver pieces for your achievement. What?!! You thought I would give you ten? Fat chance! Now get lost or I will haul you in for impersonating a froglok.');
  quest::faction("193","1");
  quest::faction("30","1");
  quest::faction("282","1");
  quest::faction("62","1");
  quest::faction("317","1");
  quest::givecash("0","7","0","0");
  }
 }
 #Submitted by Senzo : PEQ Quest Team
