sub EVENT_ITEM { 
if($itemcount{30162} == 1){
quest::say("Thank you. $name. your deeds will be mentioned to  the Dain. Please take this note from Corbin to Garadain. it may help him to achieve victory over the enemy.");
quest::summonitem("1047");
quest::faction("330","1");
quest::faction("Not_Found","1");
quest::faction("336","-1");
quest::faction("331","-1"); }
}
#END of FILE Zone:eastwastes  ID:116129 -- Dobbin_Crossaxe 

