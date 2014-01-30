sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Come forward and speak.  What is it you seek within these walls?  Let it be the knowledge of wizardry. for that is what we are.  Only a [servant of wizardry] should be within these walls.");
}
if($text=~/i am a servant of wizardry/i){
quest::say("A servant. you say?  If you be a young apprentice. perhaps you might assist me? I could use you to [collect components].  If you believe yourself to be beyond such things. you may wish to assist me with a [special matter].");
}
if($text=~/what collect components/i){
quest::say("The Crimson Hands have no quarrel with you. but we cannot truly trust you as yet.");
}
if($text=~/what special matter/i){
quest::say("The Crimson Hands have no quarrel with you. but we cannot truly trust you as yet."); }
}
#END of FILE Zone:erudnint  ID:24070 -- Josper_Kenshed 

