sub EVENT_SAY { 
 if($text=~/Hail/i){
	#wrong text:
	quest::say('Hello. I was in paw, and I stole a skull, but then I gave it to an assassin to leave me alone. He did not leave me alone. I am on the run, and I would appriciate it if you would please give this note to my brother Hyrill in Freeport.');
	quest::summonitem(18010);
 }
}

