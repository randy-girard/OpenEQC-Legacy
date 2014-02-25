sub EVENT_SAY { 
if ($text=~/Hail/i){
	quest::flagcheck(30,1);
	if($returnflag == 1){quest::say("Ahhhgggg.. Those mangy [dogs] put up a tough fight.. If I don't make it back to the [Clan House] soon, it'll all be over for me."); }
	if($returnflag == 2){quest::say("I am now accepting quests");quest::say("Yes, he saved my life.. I owe him much thanks. Please return my pack to me now, good friend."); }
}
if ($text=~/dogs/i){quest::say("It's those Darkpaws.. They've beat me pretty badly.. but they'll get theirs soon enough!");
}
if ($text=~/clan house/i){quest::say("I am a new member of the Silent Fist Clan.. I need someone from my guild to help me find my way back.");
}
if ($text=~/Seta has sent me to find you/i){quest::say("Oh.. Thank goodness you found me.. I'm lost and weak, those [mutts] are a vicious lot.. an you carry my [backpack] for me?");
}
if ($text=~/backpack/i){quest::say("Thank you, friend.. Now, can you [lead me back to master Seta] of the [Silent Fist Clan]? ");
quest::summonitem("32601");
}
if ($text=~/lead you back to master seta/i){quest::say("Lead the way, and I shall follow. When we make it back, please inform Seta that you have rescued me.");
quest::flagnpc(30,1);
quest::flagcheck(30,1);
quest::follow($userid); }
}
sub EVENT_ITEM { 	
if ($item1=="32601"){
quest::flagcheck(30,1);
if($returnflag == 2){
	quest::say("Oh, you have the makings of a true hero.. The Silent Fist Clan is proud to have you as ally. May your soul guide and protect you through these chaotic times.");	
	quest::faction("2082","1");
	quest::faction("2084","1");
	quest::faction("2030","1");
	quest::exp("100");
	}
quest::flagnpc(30,0);
quest::flagcheck(30,1);	
quest::sfollow(); }
}
#END of FILE Zone:qeynos2  ID:2031 -- Tomer_Instogle 

