sub EVENT_ITEM {
if($itemcount{20368} == 1){
quest::say("Hmmm. What's this? A note from that silly bard Baenar? I 
wasn't aware that those of his kind could write, much less read.");
quest::emote("lets out a deep laugh.");
quest::say("I see you do not share my sense of humor. Let's read it, shall 
we? Oh, no! She's dead? I knew that already, you fool. It was by my hand 
she died! Ooops! Did I let that slip out? Silly me. I guess I will have to 
kill you now!");
quest::spawn(12132,0,0,-10905,1249,210);
quest::attack($charid);
}
}
sub EVENT_DEATH {
quest::summonitem("20367");
quest::depop();
}

#END of FILE Zone:qey2hh1  ID:12076 -- Maligar

