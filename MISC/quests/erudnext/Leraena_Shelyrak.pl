sub EVENT_SAY { 
if($text=~/Hail/i){quest::say("Welcome. my child.  I am Leraena Shelyrak. overseer of the Temple of Divine Light. Inside this temple. you may find the path to inner peace.  Introduce yourself to each of the priests and priestesses of the temple as well as the paladins. Together we shall put an end to such disruptive influences as the [kobold shamans]."); }
if($text=~/kobold shaman/i){quest::say("The primitive kobold race has begun to show signs of healing ability.  No doubt this was granted by some evil deity.  Since they are of little power compared to a much more superior race such as ours. we only require the talents of young priests to [slay the kobold shaman].");  }
if($text=~/slay/i){quest::say("You are so young...  Go to Toxxulia and find these kobold shamans.  Cut off their paws and return them to me.  I require three paws as proof of your worth to our temple."); }
}
sub EVENT_ITEM { 
	if ($item1=="18723"){quest::say("Greetings. and welcome to the Temple of Divine Light! Here is your guild tunic. Serve Quellious well. Please see Lumi Stergnon - he has a task for you.");
quest::summonitem("13546");
quest::exp("100"); }
}
#END of FILE Zone:erudnext  ID:98079 -- Leraena_Shelyrak 

