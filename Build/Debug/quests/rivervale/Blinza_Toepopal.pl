sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hello. $name.  Welcome to the Fool's Gold!  Cards are upstairs. drinks are down here.  Have fun!"); }
}
sub EVENT_ITEM { 
if($itemcount{13972} == 1){
quest::say("Well it is about time!  The mayor gets very upset if he does not have the freshest of carrots in his stew.  Here is the money for the carrots.  Be off with you.  Now. where the heck did [Jillin] go?");
quest::givecash("1","0","0","0");
quest::faction("Not_Found","-1");
quest::faction("Not_Found","1");
quest::faction("10108","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
}
if($itemcount{18432} == 1){
quest::say("What are these?!  I am trying to make stew for the mayor and you bring me ROTTEN CARROTS?!  Have you no sense??  Take these back to Reebo.");
quest::summonitem("13972");
quest::faction("Not_Found","1");
quest::faction("10108","-1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","-1");
quest::faction("Not_Found","-1"); }
}
#END of FILE Zone:rivervale  ID:19091 -- Blinza_Toepopal 

