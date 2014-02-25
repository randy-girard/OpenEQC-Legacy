sub EVENT_SAY 
{ 
if($text=~/Hail/i)
{
	quest::say("Greetings, fellow traveler! I gotta tell ya. I love this town. 

Especially Crow's. Although the crowd seems a bit shadier than other places of the sort.");
}
if($text=~/what testament of vanear/i)
{
	quest::say("So you have heard that good old Moodoro has knowledge of the Testament 

of Vanear. I care little for that book. Of course I have it!! If you want it, I will sell it 

to you for two gold pieces.");
}
if($text=~/I want page 34/i)
{
	quest::say("So, you know I have page 34. Pretty smart of me to tear the most 

important page out before someone else tried, eh? If you really want it, then sit down and 

deal in. Ante is 4 gold. I will give you one card. If it is a jester, then I will give you 

the page. Let's do it.");
}
}
sub EVENT_ITEM 
{
if($gold == 2)
{
	quest::say("HA!! I hope you enjoy the book. It is missing pages 30 and 34. It is 

nothing more than garbage without them. A rogue ripped them from their bindings and sold 

them to [Ran].");
	quest::summonitem(17918);
}
if($gold == 4)
{
	quest::say("Well, what do you have?!!");
	quest::summonitem(24549);
}
if($itemcount{24549} == 1)
{
	quest::say("Lucky you. We were hoping to really clean you out. Here you go. Take the 

page. Even together, the book is nothing more than fiction.");
	quest::summonitem(13836);
}
}
#author caliz
#END of FILE Zone:qeynos2  ID:2083 -- Moodoro_Finharn 

