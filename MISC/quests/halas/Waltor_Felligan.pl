sub EVENT_SAY { 
if($text=~/i will assist in gathering fungus/i){
quest::say("As the wooly spiderlings get ready to molt. they'll carry wooly fungus. Oftentimes. one can find wooly fungus growing on their bellies.  I use this in me healing practices.  I'll reward ye if ye can fill this jar full o' the valuable fungus. Don't forget to combine them before ye return it to me. And have yerself some rations handy. or ye may find yerself snacking on this tasteless food source.");
}
if($text=~/Hail/i){
quest::say("Hello. me friend!  I'm the resident healer o' Halas. Please inform me when ye've a need fer me talents to [bind wounds]. [cure disease] or [cure poison]. Might I add. if ye're a young shaman o' Halas. ye can also  [assist in gatherin' fungus].");
}
if($text=~/what cure disease/i){
quest::say("Two small quantities o' wooly fungus are needed before we caa cure yer malady.");
}
if($text=~/what bind wounds/i){
quest::say("Before I bind yer wounds. ye must pay tribute to the Tribunal in the amount of ten gold coins.");
}
if($text=~/what cure poison/i){
quest::say("I'll be needing mammoth steaks to feed the unfortunate.  Then we'll drain the poison from yer veins."); }
}
#END of FILE Zone:halas  ID:29058 -- Waltor_Felligan 

