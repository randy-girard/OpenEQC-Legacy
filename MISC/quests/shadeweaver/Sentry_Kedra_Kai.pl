sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Well met wanderer. Pay heed to the road you chose to travel on, for there are many [hazards] you may come across no matter which direction you chose.");
}
if($text=~/what hazards?/i){
quest::say("The western road passes through a dangerous part of the thickets. A rivalry between the strange Tegi clans is afoot. Pay close attention, for the darker ones seem much more hostile than the ones that came before them. The Northern road passes through to the [Paludal] caverns. Once it was a rather safe trade route to the city of Shadow Haven. It has since fallen to regular brigand attacks.. We still get traders coming to sell their wares, but the journey is far more treacherous these days."); }
}
#END of FILE Zone:shadeweaver  ID:165175 -- Sentry_Kedra_Kai 

