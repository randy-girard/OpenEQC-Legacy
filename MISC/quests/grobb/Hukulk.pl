sub EVENT_SAY { 
if($text=~/Hail/i){quest::say("What you want!!  You make fun of [helm of Hukulk]?!!  Me smash you!!  Maybe you come learn ways of Hate and Fear!  You be dark power.  You be Pain. You [want join Nightkeep]?"); }
if($text=~/join/i){quest::say("Good.  Hate and Pain.  Innoruuk teach power. I teach power.  Me make you power.  You do what me say.  You no mess up. I no kill you.  We no like dead creature we no own.  Go. kill dem.  Bring four bone chips.  I make you power."); }
}
sub EVENT_ITEM { 
	if ($item1=="18792"){quest::say("Haaah!! Bow to Hukulk!! Hukulk make you feared.. make you powered! Dark power flow through you! Hate and Fear in your blood! Go to Vergad. He give you first lesson in pain.");
quest::summonitem("13529");
quest::exp("100"); }
}
#END of FILE Zone:grobb  ID:40023 -- Hukulk 

