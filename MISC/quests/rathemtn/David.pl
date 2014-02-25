sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("I. the keeper of the [Bracers of Ro].  welcome you.  Come and rest within our camp.  You have nothing to fear while such righteous might is gathered.");
}
if($text=~/what bracers of ro/i){
quest::say("When you can swim the waters of Rathe and return two goblin nets from the elusive goblin net masters. then you will be rewarded the bracer mold.");
quest::say("We. the Deepwater Knights. know of your vile ways. You had best leave while you can."); }
}
sub EVENT_ITEM { 
if($itemcount{12311} == 2){
quest::say("Two Deepwater goblin nets are required.");
quest::say("You have done well. Take the mold for the bracer.  Go forth to speak with Thomas of [Lord Searfire].  Then all components shall be known.");
quest::summonitem("12301");
quest::faction("Not_Found","1");
quest::faction("103","1");
quest::faction("302","-1"); }
}
#END of FILE Zone:rathemtn  ID:50108 -- David 

