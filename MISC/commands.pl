# Harakiri ADD YOUR COMMANDS HERE
sub commands_init {
		# command , description , admin level
    command_add("testopcode", "- Send an arbitrary packet.", 250);    
}

# Harakiri ADD YOUR METHODS HERE

# Harakiri Example method to test your opcodes, modify to your needs or add a new one
sub testopcode {
   
    #struct TeleportPC_Struct
		#{
		#/*0000*/ char zone[16];
		#/*0016*/ int8 unknown2[16];			
		#/*0032*/ float   yPos;          # Harakiri y loc
		#/*0036*/ float   xPos;          # Harakiri x loc			
		#/*0040*/ float   zPos;          # Harakiri z loc
		#/*0044*/ float	 heading;		# Harakiri will be divided by 2 by the client
		#};
    $p = new PerlPacket(0x4D21, 48);
    # OR  $p = HexToPacket(0x4D21, "hex_string");    
    $p->SetString(0,"qeynos2");
    # x
    $p->SetFloat(32,0);
    # y
    $p->SetFloat(36,0);
     # z
    $p->SetFloat(40,100);
    #$client->GetTarget()
    $client->Message(13, "Teleporting you."); 
    $p->SendTo($client);      
     
}

# Harakiri UTILITY METHODS FOLLOW
sub HexToPacket {
    my $op = shift;
    my $hex = shift;
    my @lines = split(/\r?\n/, $hex);
    my $body = "";
    my @pieces = ();
    foreach my $l (@lines) {
        if($l =~ /[0-9a-fA-Fx]+:\s*(.*)\s+\|/) {
            $l = $1;
        }
        $l =~ s/\s+-\s+/ /g;
        $body .= $l;
    }
    foreach my $p (split(/\s+/, $body)) {
        push(@pieces, hex($p));
    }
    my $p = new PerlPacket($op);
    $p->FromArray(\@pieces, $#pieces+1);
    return($p);
}

sub FileToPacket {
    my $op = shift;
    my $file = shift;
    my $c = "";
    open(F, "<$file") || return(undef);
    while(<F>) {
        $c .= $_;
    }
    close(F);
    return(HexToPacket($op, $c));
}