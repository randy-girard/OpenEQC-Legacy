sub EVENT_SAY { 
 if($text =~ /hail/i) {
	quest::emote('gestures as if casting a powerful spell. 'Come forward, adventurer! Com and [see the dancing skeleton]. I shall cast a powerfull spell and bring forth this operatic, clattering jumble of bones and he shall do a fine dance for you. From the nether regions and planes beyond, I call forth this bardic, magical, rhyming, tap-dancing hunk of undead!! I am Oowomp the Great!!');
 }
if($text=~/i want to see the dancing skeleton/i){
quest::say("Oh!!  You wish to see the great Oowomp perform his magic!!  I have studied with the grand mages and wise [McMerin clan] of Norrath. as my speech implies.  I can call forth the skeleton with but a twinkling of my power and five of your gold.");
}
if($text=~/who is McMerin clan/i){
quest::say("Clan McMerin were wise shamans from the North.  They allowed me to study with them.  I learned many spells while I communed with them.  From them. I sto.. I mean. I learned. the secret of McMerin's Feast.  If you want to know the secret. you could [help gather components] for future rituals.");
}
if($text=~/i will help gather components/i){
quest::say("Actually... Not so much help as do - ALL - of the gathering.  In the lands of Kunark are clay of Ghiosk. crushed dread diamond and powder of Yun.  A rare find would be the bones of one who touched the Bath of Obulus.  Find and return these to me and the shaman secret of McMerin's Feast is yours."); }
}

sub EVENT_ITEM {
 if($gold == 5) {
	quest::emote('flings the coins into the air and they all fall neatly into his oversized coin pouch. <Tink, tink, tink, tink, TINK!!> \'Gaze in aew at my awsome powers of the arcane!! You, a simple citizen, shall see my power. Allakabam!!');
	quest::say('TODO: Summon dancing skeleton!!!');
 }
}

#END of FILE Zone:timorous  ID:2030 -- The_Great_Oowomp 

