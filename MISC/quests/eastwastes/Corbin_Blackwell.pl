sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hurry! There's not much time. give me the key and show me proof that you are a friend sent to rescue me..."); }
}
sub EVENT_ITEM { 
if($itemcount{1046} == 1){
quest::say("I thought I was a dwarfskin rug there for a minute! Thank Brell for your help stranger! Now cover me while I make good my escape. I am weakened and cannot endure much more.");
quest::summonitem("30162"); }
}
#END of FILE Zone:eastwastes  ID:116145 -- Corbin_Blackwell 

