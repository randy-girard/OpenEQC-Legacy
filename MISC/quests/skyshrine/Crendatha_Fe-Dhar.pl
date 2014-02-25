sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("What do we have here?  A cutthroat. perhaps?  If you are a rogue. I may have use for you.  I am in need of certain components and will reward you well if they are brought to me.  Do I have your services?");
}
if($text=~/i am a rogue/i){
quest::say("What do we have here?  A cutthroat. perhaps?  If you are a rogue. I may have use for you.  I am in need of certain components and will reward you well if they are brought to me.  Do I have your services?");
}
if($text=~/what bracer/i){
quest::say("An unadorned bracer and three crushed flame emeralds are what I require of you.  A bracer of my making is your reward."); }
}
#END of FILE Zone:skyshrine  ID:114263 -- Crendatha_Fe`Dhar 

