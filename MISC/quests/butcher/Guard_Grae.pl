sub EVENT_SPAWN {
	$x = $npc->GetX();
	$y = $npc->GetY();
	quest::set_proximity($x - 20, $x + 20, $y - 20, $y + 20);
}

sub EVENT_ENTER {
	my $n = $client->GetName();
	quest::say("Congratulations $n, you have won the race!");
	$winner = $client->GetID();
	quest::clear_proximity();
}

sub EVENT_EXIT {
	$n = $client->GetName();
	$client->Message(0, "Bye $n!");
}

sub EVENT_SAY {
	if($text=~/Hail/i) {
		if($winner == $client->GetID()) {
			quest::say("Hello ".$client->GetName().", good work on winning the race.");
			quest::summonitem(10037, 1);
			$winner = -1;
		} else {
			quest::say("You did not win the race, go away.");
		}
	} elsif($text =~ /reset/i) {
		$x = $npc->GetX();
		$y = $npc->GetY();
		quest::set_proximity($x - 20, $x + 20, $y - 20, $y + 20);
		quest::say("The race has been reset");
	}
	if($text =~ /follow/) {
		$client->Message(4, "Im going to follow you now");
		$npc->SetFollowID($client->GetID());
	}
	if($text =~ /stop/) {
		$client->Message(4, "FINE, you are smelly anyways!");
		$npc->SetFollowID(0);
	}
	if($text =~ /sit/) {
		$client->Message(4, "Sitting");
		$npc->SetAppearance(1, 0);
	}
	if($text =~ /stand/) {
		$client->Message(4, "Standing");
		$npc->SetAppearance(0, 0);
	}
	if($text=~/fear/i) {
		quest::say("Learn fearless fool...."); 
		quest::traindisc(66201);
	}
	if($text=~/look/i) {
		$x = $npc->GetX();
		$y = $npc->GetY();
		quest::set_locality($x - 20, $x + 20, $y - 20, $y + 20);
	}
}
#END of FILE Zone:butcher  ID:68064 -- Glorin_Binfurr 

