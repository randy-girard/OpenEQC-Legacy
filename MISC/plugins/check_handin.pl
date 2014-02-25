# plugin::check_handin($item1 => #required_amount,...);
# autoreturns extra unused items on success
sub check_handin {
    my $hashref = shift;
    my %required = @_;
    
    my $questItems = '';
    
    # debug
    foreach my $req (keys %required) {
	    $questItems = $questItems . ' ' . $req
	}
    # debug
    quest::say("Need Item(s) " . $questItems);
	
     foreach my $k (keys(%{$hashref})) {
				next if($k == 0);
				my $r;
				for($r = 0; $r < $hashref->{$k}; $r++) {				
					 quest::say("Got Item " . $k);
				}				
    }
    
    foreach my $req (keys %required) {    
    
		if ((!defined $hashref->{$req}) || ($hashref->{$req} != $required{$req})) {
			  # debug
			  quest::say("Item " . $req . " missing");
	          return(0);
		}
    }
     foreach my $req (keys %required) {
         if ($required{$req} < $hashref->{$req}) {
             $hashref->{$req} -= $required{$req};
         } else {
             delete $hashref->{$req};
         }
     }
     
     # debug
     quest::say("Found all turn in items (" . $questItems . " )");
     
     # delete pending quest items (multiquesting successful)
     foreach my $req (keys %required) {
	     quest::DeletePendingQuestItem($req);	    
	 }
     
     return 1;
}

sub return_items {    
    my $hashref = shift;
    foreach my $k (keys(%{$hashref})) {
	next if($k == 0);
	my $r;
	for($r = 0; $r < $hashref->{$k}; $r++) {		
		# harakiri return items shouldnt return anything anymore because of multiquesting
		# this is always called when an item is missing from a turn in or the wrong item is turned in
		# quest::summonitem($k);
	}
	delete $hashref->{$k};
    }
}

1;