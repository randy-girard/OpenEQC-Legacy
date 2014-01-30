sub EVENT_SAY {
 if($text=~/hail/i){
  quest::say("Hi there $name . Think you could help me out a bit? I was hired to get rid of all these pesky rodents running around town but there seems to be no end to them! They are ruining the jumjum field and worse yet, if I dont get rid of them all, my boss wont give me the muffins he promised me! Think you could hunt some of the rodents down and bring me back four rat whiskers? I would pay you of course!");
  }
 }

sub EVENT_ITEM {
 if(plugin::check_handin(\%itemcount, 13071 => 4)){
  quest::say('Nice work! Take these coins. Oh no, there are still more rodents! I better get to work. Farewell, friend!');
  quest::faction("133","1");
  quest::faction("208","1");
  quest::faction("316","1"); 
  quest::faction("218","1");
  quest::faction("88","-1"); 
  quest::givecash("1","1","1","0");
  }
 }
 
 #Submitted by Senzo : PEQ Quest Team
