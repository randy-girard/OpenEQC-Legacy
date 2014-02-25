sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail and well met. $name. I am Simon Aldicott. a cleric in the service of Mithaniel Marr. I've been sent here to prepare a [funeral service] for one of our lost to join Marr in his kingdom.");
}
if($text=~/what funeral service/i){
quest::say("Hail and well met. $name. I am Simon Aldicott. a cleric in the service of Mithaniel Marr. I've been sent here to prepare a [funeral service] for one of our lost to join Marr in his kingdom.");
}
if($text=~/what is a funeral service/i){
quest::say("Hail and well met. $name. I am Simon Aldicott. a cleric in the service of Mithaniel Marr. I've been sent here to prepare a [funeral service] for one of our lost to join Marr in his kingdom.");
}
if($text=~/how did you prepare/i){
quest::say("Hail and well met. $name. I am Simon Aldicott. a cleric in the service of Mithaniel Marr. I've been sent here to prepare a [funeral service] for one of our lost to join Marr in his kingdom.");
}
}

sub EVENT_ITEM
{
 if($itemcount{6708} == 1)
  {
   quest::say("Well done. Lets get this burial over with. Gah! What..is..that!!");
#   quest::spawn();
  }
 if($itemcount{6709} == 1)
  {
   quest::say("Whoa that was the reincarnation of Darak Lightforge! And you killed him! You are definately skilled enough to use this.");
   quest::summonitem(15693);
  }
}
#END of FILE Zone:commons  ID:21020 -- Simon_Aldicott 

