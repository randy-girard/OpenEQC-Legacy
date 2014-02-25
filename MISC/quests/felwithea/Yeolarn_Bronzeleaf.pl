sub EVENT_SAY { 
if($text=~/Hail/i){quest::say("Hail. $name !  We of Tunare are charged with protecting the Great Mother from the forces of Innoruuk.  Even now. the evil minions of this foul deity are despoiling our great forest.  Will you help us [protect the Mother]?"); }
if($text=~/protect/i){quest::say("Just outside the gates of Felwithe. the forces of Innoruuk gather in the guise of decaying skeletons.  Bring me four sets of bone chips as proof of your vigilance.  I assure you. your faith shall not go unrewarded."); }
}
sub EVENT_ITEM { 
if($itemcount{13073} == 4){quest::say("Praise Tunare! I knew you would be victorious.  I reward you with this spell. and pray that it will help you in your fight against the unholy forces of Innoruk. When you are ready you will make a fine [Initiate of Tunare].");
quest::summonitem("15014");
quest::exp("325"); }
if($item1 == "18780"){quest::say("Welcome. friend. to the Clerics of Tunare.  I am Yeolarn Bronzeleaf. head of the guild and devout follower of Tunare.  Here is your guild tunic - it will help to protect you against this world's evils.");
quest::summonitem("13590");
quest::exp("100"); }
}
#END of FILE Zone:felwithea  ID:61019 -- Yeolarn_Bronzeleaf 

