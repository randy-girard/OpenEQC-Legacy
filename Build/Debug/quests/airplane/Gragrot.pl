sub EVENT_SAY{
if($text=~/Hail/i){
quest::say("Hail!  So you think you are a mighty Knight of Shadows?  We must test these skills.  Are you ready to begin the test?  Or do you think you have already proof of your deeds?");
}
if($text=~/i am ready to begin the test/i){
quest::say("Great, let us waste no more time!  I offer to you three challenges,  Bash, smash, or slash?  What do you wish to be tested in?"); }
}
#END of FILE Zone:airplane  ID:Not_Found -- Gragrot 

