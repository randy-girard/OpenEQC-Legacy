sub EVENT_SAY { 
if($text=~/Hail/i){
quest::pause(10);
quest::say("What, $name?  Do I look like a merchant to you?  Just because all these merchants are in my library, it doesn't mean that I am one.  If you are interested in something other than spell scrolls, then, we can talk."); }
}



