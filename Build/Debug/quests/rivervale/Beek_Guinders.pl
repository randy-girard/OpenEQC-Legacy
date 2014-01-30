sub EVENT_SAY { 
if ($text=~/Hail/i){quest::say("Hay. ho, there, young $race ! I'd love to yak it up with you but I'm a bit busy at the moment. trying to find some [help]."); }
}
sub EVENT_ITEM { 
if ($item1=="18731"){quest::say("Aye. Welcome. my fur-footed friend. My name is Beek Guinders. and I am guild master here at the Chapel of Mischief. Here is our guild tunic. Wear it with pride, as it will set you apart from the crowd.");
quest::summonitem("13538");
quest::exp("100"); }
}
#END of FILE Zone:rivervale  ID:19111 -- Beek_Guinders 

