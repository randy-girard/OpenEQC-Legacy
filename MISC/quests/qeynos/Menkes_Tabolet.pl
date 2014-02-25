sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings, fine citizen of Qeynos, what can I make for you today?  How about a genuine, handmade [rat fur cap]?  Or maybe a lovely [rat pelt cape]?  Maybe you'd like a necklace?  For a small fee. I can make a nice [snake fang necklace] or a [lucky rat's foot necklace].");
}
if($text=~/i want a rat fur cap/i){
quest::say("Rat fur cap?  You're in luck, that happens to be my specialty, $name.  Just bring me 2 pieces of rat fur and 3 gold, and I'll make one up for you while you wait.");
}
if($text=~/i want a rat pelt cape/i){
quest::say("The rat pelt cape..  that happens to be my specialty!  I must say, it would be the perfect choice to go with that outfit you have on.  All I need are 3 rat pelts, those big ol' rats out in the hills work great for these capes, and 4 gold.  I must say, at these prices, everyone in Qeynos will be wearing one in a matter of weeks.");
}
if($text=~/i want a snake fang necklace/i){
quest::say("Hey, great choice..  the snake fang necklace just happens to be my specialty. $name!  Just bring me 3 snake fangs, and 2 gold.  With one of these around your neck, you're sure to be the center of attention down at Crow's..  or anywhere else you fill your mug.");
}
if($text=~/i want a lucky rat/i){
quest::say("Now that is exactly what you need my friend, a lucky rat's foot necklace..  and, it just happens to be my specialty!  Just bring me one rat's foot, some rat whiskers, and I won't even charge you any gold. Just buy me a honey mead, and you'll be the luckiest rat dodger this side of Highpass."); }
}
#END of FILE Zone:qeynos  ID:1150 -- Menkes_Tabolet 

