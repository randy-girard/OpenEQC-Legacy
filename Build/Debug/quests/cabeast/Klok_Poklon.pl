sub EVENT_SAY {
 if($text=~/hail/i){
  quest::say('Greetings, thirsty traveler. Pull up a stool and lay yer copper down. Its time to drink and be merry. Just dont get too merry or I will have to call the trooers.');
  }
 elsif($text=~/what of talon southpaw/i){
  quest::emote('feints with two quick left hooks!!');
  quest::say('Talon Southpaw. He had the fastest hands in the empire. I remember he once beat another lizard in an arm wrestling match. The amazing thing was, while he was gripping the croaks left hand, he left hooked him without losing his hold!! Thats quick!! I hear one of his treasured hands is in the possession of a monk called Master Rinmark.');
  }
 }

 #Submitted by: Senzo aka Fatty Beerbelly
 #END of FILE : Zone : cabeast : NPC_ID : 3038 : Klok_Poklon


