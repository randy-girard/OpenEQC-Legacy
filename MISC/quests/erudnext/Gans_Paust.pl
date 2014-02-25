sub EVENT_SAY { 
if ($text=~/Hail/i){quest::say("Hello."); }
}
sub EVENT_ITEM { 
	if ($item1=="18724"){quest::say("Yes. welcome friend! Here is your guild tunic. You'll make a fine addition to the Deepwater Knights. Go see Dleria. she will get you started in your studies.");
quest::summonitem("13544");
quest::exp("100"); }
}
#END of FILE Zone:erudnext  ID:98061 -- Gans_Paust 

