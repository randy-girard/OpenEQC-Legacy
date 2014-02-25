sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Bah!! It's not been a good day! Reports from the Outlands are even worse than I was led to believe. Many would-be adventurers have turned up missing of late. One of them was one of my messengers. He was out collecting some of the various new and [interesting scrolls] that have been surfacing in the farthest reaches of this land. I fear for his safety and that of the others searching for the lost travelers. I wish there was more I could do.");
}
if($text=~/i will help locate them for you/i){
quest::say("You would do that for me? Of course you would. you realize how important my work is here. Your task is quite simple. really. I'll part with one of my rare scrolls if you bring me one of the common ones from the surrounding areas. To be more precise. I am looking for the scrolls Gift of Xev and Bristlebane's Bundle. Oh. my nephew is going to love these! I can't wait to get my hands on them! I'm also looking for the scrolls Quiver of Marr. and Scars of Sigil. Bring them back to me as soon as you find one.");
}
if($text=~/I will help locate/i){
quest::say("You would do that for me? Of course you would. you realize how important my work is here. Your task is quite simple. really. I'll part with one of my rare scrolls if you bring me one of the common ones from the surrounding areas. To be more precise. I am looking for the scrolls Gift of Xev and Bristlebane's Bundle. Oh. my nephew is going to love these! I can't wait to get my hands on them! I'm also looking for the scrolls Quiver of Marr. and Scars of Sigil. Bring them back to me as soon as you find one."); }
}
#END of FILE Zone:firiona  ID:84168 -- Hiptal_Frizzleboth 

