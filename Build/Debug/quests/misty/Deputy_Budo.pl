sub EVENT_ITEM { 
if($itemcount{13916} == 1){
quest::say("Grand work. Deputy $name! You will become a full-fledged deputy in no time. You should check in with Marshal Ghobber from time to time to see if you have earned your squad ring. Just go up to him and ask. 'Am I one with the Wall?' He will know. but you must first show your bravery in many battles against the goblins.");
quest::givecash("6","0","0","0");
quest::faction("111","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","-1"); }
}
#END of FILE Zone:misty  ID:33081 -- Deputy_Budo 

