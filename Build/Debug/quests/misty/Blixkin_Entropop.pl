#Blixkin Entopop, Misty Thicket
#okay.. there is a list of crap you have to put into item 17922 and combine to get 13268..
#items = 13253, 13099, 10307, 13262, 13252, 13259

sub EVENT_SAY
{
if ($text=~/hail/i)
  {
  quest::say("BUGS! BUGS! I love them!.. Do you like to [collect bugs]?");
  }

if ($text=~/collect/i)
  {
  quest::say("Really? Great! Well since you are a fellow collector.. i'll tell you what.. If you collect this list of bugs for me, i'll give you something great!");
  quest::summonitem(18011);
  quest::summonitem(17922);
  }
}

sub EVENT_ITEM
{
if($itemcount{13268} == 1)
  {
  quest::say("Thank you so much! You have done me a great service! Here is your reward");
  quest::emote("digs around in his belt-pouch");
  quest::me("You have successfully completed the task!");
  quest::exp(150);
  quest::summonitem(quest::ChooseRandom(13280, 14010, 13281, 14015, 16875));
  quest::faction(77,3);
  quest::faction(133,3);
  quest::faction(208,3);
  quest::faction(218,3);
  quest::faction(48,-3);
  }
} 