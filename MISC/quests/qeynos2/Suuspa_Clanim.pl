sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Welcome to the Temple of Life. $name.  It is here that you may pay tribute to the Prime Healer.  Does not your heart beat with the sound of life?  It is He who makes it so.  Do not let the hand of Bertoxxulous and his [new disease] lay upon your soul or. like so many. you shall meet your fate at the end of my sword!");
}
if($text=~/new disease/i){
quest::say("The new disease I speak of is called the Bloodsabers.  They are the loyal followers of Bertoxxulous and as such have been condemned by our temple.  Do you wish to [join the fight]?");
}
if($text=~/join the fight/i){
quest::say("Then seek out those who worship the Plaguebringer.  End their threat!!  Each member has upon them the mark of the Bloodsabers. a rat-shaped ring.  I shall reward all those who return such rings to me."); }
}

sub EVENT_ITEM {
 #do all other handins first, then let it do disciplines
 #if($itemcount{} == 1) {
 #} else {
	if($class ne 'Paladin') {
		quest::say("You are not a member of my guild. I will not train you!");
		quest::summonitem($item1) if($item1);
		quest::summonitem($item2) if($item2);
		quest::summonitem($item3) if($item3);
		quest::summonitem($item4) if($item4);
		return;
	}
	#assume it is a discipline tome...
	quest::traindisc($item1) if(quest::isdisctome($item1));
	quest::traindisc($item2) if(quest::isdisctome($item2));
	quest::traindisc($item3) if(quest::isdisctome($item3));
	quest::traindisc($item4) if(quest::isdisctome($item4));
 #}
}
#END of FILE Zone:qeynos2  ID:2048 -- Suuspa_Clanim 
