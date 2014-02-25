#last part of sir arium's bridal. Xon_Quexill is in Neriakc, neriak third gate
#same quest as Sir artanius, but i wasn't for sure on the actuall conversation part so i submitted as the same, im pretty sure they say the same things

sub EVENT_SAY
{
	if($text=~/Hail/i)
	{
		quest::say("Welcome to the Lodge of the Dead. May you serve our Queen with the bleeding of others."); 
	}

	if($text=~/befallen/i)
	{
		quest::say("You did well to ride swiftly with this news. I must take this directly to Valeron Dushire. If you learn more about this plot that would unleash this monster upon Norrath or wish to someday soon aid the Knights of Truth in putting down this evil, then return to speak to me again at a later time.");
	}
}

sub EVENT_ITEM
{
	if(plugin::check_handin(\%itemcount,18474 =>1))
	{
		quest::say("What is this? .. Burning Dead .. .. Marnek! By my blade this must be stopped! Where did you find this?");
	}
	if(plugin::check_handin(\%itemcount,31492 => 1))
	{
		quest::say("It was a fine and valiant steed to serve its master beyond the grave, but it looks to be near its end. But I have a fine eye for horses, and I dare say it will serve you one more time.");
		quest::summonitem(31496);
	}
	if($itemcount{18758} == 1)
	{
		quest::summonitem("13587");
		quest::faction("305","1");
		quest::faction("Not_Found","1");
		quest::faction("Not_Found","-1");
		quest::faction("10502","-1");
		quest::faction("11204","-1");
		quest::faction("Not_Found","-1"); 
	}

}