#South qyenos noob quest: Exterminator Rasmon

sub EVENT_SAY
{
	if($text=~/hail/i)
	{
		quest::say("'Hello $name, have you seen these pesky rodents? They are everywhere and I simply cannot stand them! If you are willing to do a little cleaning up of the pests here I will reward you for every four rat whiskers you bring me.");
	}
}
sub EVENT_ITEM
{
	if(plugin::check_handin(\%itemcount, 13071 => 4))
	{
		ques::say("I am very impressed $name, a few more cleaners like yourself and we could have a rodent free Qeynos in no time!");
		
		quest::faction(135,2);
		quest::faction(9,2);
		quest::faction(53,-2);
		quest::faction(33,-2);
		quest::faction(217,2);
		
		quest::givecash("1","1","1","0");
		
		quest::exp(250);
	}
}
		