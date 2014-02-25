
sub EVENT_SAY {
	if($text =~ /hail/i) {
		quest::say('hi');
	}
	if($text =~ /Talon/i) {
	}

}

sub EVENT_ITEM {
 if($copper == 2) {
	quest::summonitem(18077);
 }
}

#END of FILE Zone:cabeast  ID:5017 -- The_Toilmaster 

