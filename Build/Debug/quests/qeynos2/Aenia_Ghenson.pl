   sub EVENT_SAY { 
     if($text=~/Hail/i){
     quest::say("Why, hello there!  I'm Aenia, daughter of Dranom.  It's such a bore just sitting around here all day and night.  My father is soooooo overprotective! He never lets me go out and have any fun at all.  And he's so mean to my poor [boyfriend]!");
    }
     if($text=~/boyfriend/i){
     quest::say("My boyfriend's name is Behroe Dlexon.  He is so dreamy..  <sigh>..  But, I haven't been able to see him lately.  He works nights down at the docks, and with my father here all day, we just can't seem to get together.  Oh. how I wish I could speak with him.."); }
    }
#END of FILE Zone:qeynos2  ID:2090 -- Aenia_Ghenson 

